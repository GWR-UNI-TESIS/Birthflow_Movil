import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/usecases/user_group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/user_group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/users_in_group_get_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/groups/group/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/groups/group/bloc/events/users_event.dart';
import 'package:birthflow_movil/src/ui/groups/group/bloc/states/users_state.dart';
import 'package:birthflow_movil/src/ui/libs/delegates/search_users_delegates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _UserProfiler {
  final String userId;
  final String name;
  final String userName;

  _UserProfiler({
    required this.userId,
    required this.name,
    required this.userName,
  });
}

class GroupProfiler {
  final int groupId;
  final String owner;

  GroupProfiler({required this.groupId, required this.owner});

  // Métodos para serializar y deserializar
  Map<String, dynamic> toJson() => {
        'groupId': groupId,
        'owner': owner,
      };

  factory GroupProfiler.fromJson(Map<String, dynamic> json) => GroupProfiler(
        groupId: int.parse(json['groupId'].toString()),
        owner: json['owner'].toString(),
      );
}

class GroupUsersScreen extends StatelessWidget {
  final GroupProfiler profiler;

  const GroupUsersScreen({super.key, required this.profiler});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UsersBloc(
            getUsersInGroupUseCase: locator<GetUsersInGroupUseCase>(),
            createUserGroupUseCase: locator<CreateUserGroupUseCase>(),
            deleteUserGroupUseCase: locator<DeleteUserGroupUseCase>(),
          )..add(UsersEvent.loadUsers(profiler.groupId)),
        ),
      ],
      child: GroupUsersView(
        profiler: profiler,
      ),
    );
  }
}

class GroupUsersView extends StatelessWidget {
  final GroupProfiler profiler;

  const GroupUsersView({required this.profiler});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthenticationBloc>().state;
    final userId = auth.maybeWhen(
      authenticated: (result) => result.id,
      orElse: () => null,
    );
    final owner = profiler.owner == userId;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios en el grupo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              if (owner) {
                final user = await showSearch<SearchUserGroup?>(
                  context: context,
                  delegate: SearchUsersDelegate(),
                );

                if (user != null) {
                  context
                      .read<UsersBloc>()
                      .add(UsersEvent.addUser(user.userId!, profiler.groupId));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Solo el creador del grupo tiene agregar usuarios',
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<UsersBloc, UsersState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (users) {
              final mappedUsers = users
                  .map(
                    (user) => _UserProfiler(
                      userId: user.id!,
                      name: '${user.name} ${user.secondName}',
                      userName: user.userName,
                    ),
                  )
                  .toList();
              return UsersList(
                users: mappedUsers,
                groupId: profiler.groupId,
                isOwner: owner,
              );
            },
            error: (message) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<UsersBloc>().add(
                        UsersEvent.loadUsers(
                          profiler.groupId,
                        ),
                      );
                },
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/503_error_service.png',
                                height: 260.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                message,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class UsersList extends StatelessWidget {
  final List<_UserProfiler> users;
  final int groupId;
  final bool isOwner;

  const UsersList({
    required this.users,
    required this.groupId,
    required this.isOwner,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text('Nombre: ${user.name}'),
          subtitle: Text('Usuario: ${user.userName}'),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              if (isOwner) {
                context
                    .read<UsersBloc>()
                    .add(UsersEvent.deleteUser(user.userId, groupId));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Solo el creador del grupo tiene eliminar un usuario',
                    ),
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
