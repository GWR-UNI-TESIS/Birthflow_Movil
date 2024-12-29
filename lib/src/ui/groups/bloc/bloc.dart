import 'package:birthflow_movil/src/domain/share/usecases/groups_get_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_update_usecase.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/events/groups_event.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/states/groups_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  final GetGroupsUseCase _getGroupsUseCase;
  final CreateGroupUseCase _createGroupUseCase;
  final UpdateGroupUseCase _updateGroupUseCase;
  final DeleteGroupUseCase _deleteGroupUseCase;
  GroupsBloc({
    required GetGroupsUseCase getGroupsUseCase,
    required CreateGroupUseCase createGroupUseCase,
    required UpdateGroupUseCase updateGroupUseCase,
    required DeleteGroupUseCase deleteGroupUseCase,
  })  : _getGroupsUseCase = getGroupsUseCase,
        _createGroupUseCase = createGroupUseCase,
        _updateGroupUseCase = updateGroupUseCase,
        _deleteGroupUseCase = deleteGroupUseCase,
        super(const GroupsState.loading()) {
     on<LoadGroups>((event, emit) async {
      try {
        final groups = await _getGroupsUseCase.execute();
        emit(GroupsState.loaded(groups ?? []));
      } catch (e) {
        emit(GroupsState.error(e.toString()));
      }
    });

    on<CreateGroup>((event, emit) async {
      try {
        await _createGroupUseCase.execute(name: event.name);
        emit(const GroupsState.actionSuccess('Grupo creado correctamente'));
        add(const GroupsEvent.loadGroups());
      } catch (e) {
        emit(GroupsState.error(e.toString()));
      }
    });

    on<UpdateGroup>((event, emit) async {
      try {
        await _updateGroupUseCase.execute(id: event.id, name: event.name);
        emit(const GroupsState.actionSuccess('Grupo modificado correctamente'));
        add(const GroupsEvent.loadGroups());
      } catch (e) {
        emit(GroupsState.error(e.toString()));
      }
    });


    on<DeleteGroup>((event, emit) async {
      try {
        await _deleteGroupUseCase.execute(id: event.id);
        emit(const GroupsState.actionSuccess('Grupo eliminado correctamente'));
        add(const GroupsEvent.loadGroups());
      } catch (e) {
        emit(GroupsState.error(e.toString()));
      }
    });
  }
}
