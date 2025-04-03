import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/events/groups_event.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/states/groups_state.dart';
import 'package:birthflow_movil/src/ui/groups/group/group_users_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GroupsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<GroupsBloc>().add(
          const GroupsEvent.loadGroups(),
        );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Grupos'),
      ),
      body: BlocListener<GroupsBloc, GroupsState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<GroupsBloc, GroupsState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (groups) => GroupsList(groups: groups),
              empty: () {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<GroupsBloc>().add(
                          const GroupsEvent.loadGroups(),
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
                                  'assets/no_data.png',
                                  height: 260.0,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'No se encuentran grupos para su usuario',
                                  style: TextStyle(
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
              actionSuccess: (_) => Container(),
              error: (message) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<GroupsBloc>().add(
                          const GroupsEvent.loadGroups(),
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go(
            AppPaths.home.groupsPath.create.path,
          );
        },
        label: const Text('Agregar nuevo grupo'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

class GroupsList extends StatelessWidget {
  final List<Group> groups;

  const GroupsList({required this.groups});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthenticationBloc>().state;
    final userId = auth.maybeWhen(
      authenticated: (result, message, _) => result.id,
      orElse: () => null,
    );
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];
        return ListTile(
          title: Text(group.groupName),
          trailing: PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Modificar':
                  if (group.createdBy == userId) {
                    context.go(
                      AppPaths.home.groupsPath.edit.path,
                      extra: group,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Solo el creador del grupo tiene permiso a editar',
                        ),
                      ),
                    );
                  }
                case 'Eliminar':
                  if (group.createdBy == userId) {
                    _showDeleteDialog(context, group.id);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Solo el creador del grupo tiene permiso a eliminar',
                        ),
                      ),
                    );
                  }
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Modificar', child: Text('Modificar')),
              const PopupMenuItem(value: 'Eliminar', child: Text('Eliminar')),
            ],
          ),
          onTap: () {
            final profiler =
                GroupProfiler(groupId: group.id, owner: group.createdBy);
            context.go(
              AppPaths.home.groupsPath.group.path,
              extra: profiler,
            );
          },
        );
      },
    );
  }

  Future<void> _showDeleteDialog(BuildContext mainContext, int id) async {
    return await showDialog<void>(
      context: mainContext,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta Eliminacion'),
          content: const Text('Esta seguro que quiere eleminar este grupo '),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: () {
                mainContext.read<GroupsBloc>().add(GroupsEvent.deleteGroup(id));
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}
