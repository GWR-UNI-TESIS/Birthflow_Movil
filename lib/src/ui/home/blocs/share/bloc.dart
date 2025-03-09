import 'package:birthflow_movil/src/domain/share/usecases/asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/get_asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/events/share_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/states/share_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  final GetAsignUserGroupUseCase _getAsignUserGroupUseCase;
  final AsignUserGroupUseCase _asignUserGroupUseCase;

  ShareBloc({
    required GetAsignUserGroupUseCase getAsignUserGroupUseCase,
    required AsignUserGroupUseCase asignUserGroupUseCase,
  })  : _getAsignUserGroupUseCase = getAsignUserGroupUseCase,
        _asignUserGroupUseCase = asignUserGroupUseCase,
        super(const ShareState.loading()) {
    // Manejar evento para obtener usuarios y grupos compartidos
    on<GetAsignUserGroupEvent>((event, emit) async {
      emit(const ShareState.loading());
      try {
        final asignUserGroup = await _getAsignUserGroupUseCase.execute(partographId: event.partographId);
        if (asignUserGroup == null) {
          emit(const ShareState.empty());
        } else {
          emit(ShareState.loaded(groups: asignUserGroup.searchUserGroupDtos ?? []));
        }
      } catch (e) {
        emit(ShareState.error(message: e.toString()));
      }
    });

    // Manejar evento para asignar o actualizar usuarios y grupos
    on<AsignUserGroupEvent>((event, emit) async {
      emit(const ShareState.loading());
      try {
        final asignUserGroup = await _asignUserGroupUseCase.execute(
          partographId: event.partographId,
          permissionTypeId: event.permissionTypeId,
          searchUserGroupDtos: event.searchUserGroupDtos,
        );

        if (asignUserGroup == null) {
          emit(const ShareState.error(message: 'Failed to assign users or groups.'));
        } else {
          emit(ShareState.assigned(groups: asignUserGroup.searchUserGroupDtos ?? []));
        }
      } catch (e) {
        emit(ShareState.error(message: e.toString()));
      }
    });
  }
}
