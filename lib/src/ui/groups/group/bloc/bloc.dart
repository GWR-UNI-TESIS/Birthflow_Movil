
import 'package:birthflow_movil/src/domain/share/usecases/user_group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/user_group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/users_in_group_get_usecase.dart';
import 'package:birthflow_movil/src/ui/groups/group/bloc/events/users_event.dart';
import 'package:birthflow_movil/src/ui/groups/group/bloc/states/users_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final GetUsersInGroupUseCase _getUsersInGroupUseCase;
  final CreateUserGroupUseCase _createUserGroupUseCase;
  final DeleteUserGroupUseCase _deleteUserGroupUseCase;

  UsersBloc({
    required GetUsersInGroupUseCase getUsersInGroupUseCase,
    required CreateUserGroupUseCase createUserGroupUseCase,
    required DeleteUserGroupUseCase deleteUserGroupUseCase,
  })  : _getUsersInGroupUseCase = getUsersInGroupUseCase,
        _createUserGroupUseCase = createUserGroupUseCase,
        _deleteUserGroupUseCase = deleteUserGroupUseCase,
        super(const UsersState.loading()) {
    on<LoadUsers>((event, emit) async {
      try {
        final users = await _getUsersInGroupUseCase.execute(groupId: event.groupId);
        emit(UsersState.loaded(users ?? []));
      } catch (e) {
        emit(UsersState.error(e.toString()));
      }
    });

    on<AddUser>((event, emit) async {
      try {
        await _createUserGroupUseCase.execute(userId: event.userId, groupId: event.groupId);
        add(UsersEvent.loadUsers(event.groupId));
      } catch (e) {
        emit(UsersState.error(e.toString()));
      }
    });

    on<DeleteUser>((event, emit) async {
      try {
        await _deleteUserGroupUseCase.execute(userId: event.userId, groupId: event.groupId);
        add(UsersEvent.loadUsers(event.groupId));
      } catch (e) {
        emit(UsersState.error(e.toString()));
      }
    });
  }
}
