import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_state_update_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographsBloc extends Bloc<PartographsEvent, PartographsState> {
  final GetPartographListUseCase _partographsGetUseCase;
  final UpdatePartographStateUseCase _updatePartographStateStateUsecase;
  final DeletePartographUseCase _deletePartographUseCase;
  PartographsBloc(
    this._partographsGetUseCase,
    this._updatePartographStateStateUsecase,
    this._deletePartographUseCase,
  ) : super(const PartographsState.initial()) {
    on<FetchPartographs>(_onPostFetched);
    on<UpdatePartographState>(_onUpdatePartographState);
    on<DeletePartograph>(_onDeletePartograph);
  }

  Future<void> _onPostFetched(
    FetchPartographs event,
    Emitter<PartographsState> emit,
  ) async {
    emit(const PartographsState.loading());
    try {
      final result =
          await _partographsGetUseCase.execute(userId: event.userId!);
      if (result != null) {
        if (result.isEmpty) {
          emit(const PartographsState.empty());
        } else {
          emit(PartographsState.loaded(result));
        }
      }
    } catch (e) {
      emit(const PartographsState.error('Ha ocurrido un error al cargar los partograma'));
    }
  }

  Future<void> _onUpdatePartographState(
    UpdatePartographState event,
    Emitter<PartographsState> emit,
  ) async {
    try {
      final updatedState = await _updatePartographStateStateUsecase.execute(
        partographId: event.partographId,
        isAchived: event.isAchived,
        set: event.set,
        silenced: event.silenced,
        favorite: event.favorite,
      );

      if (updatedState != null) {
        // Obtener el estado actual de los partogramas
        final currentState = state;
        if (currentState is Loaded) {
          // Actualizar la lista con el nuevo estado
          final updatedList = currentState.data.map((partograph) {
            if (partograph.partographId == event.partographId) {
              return partograph.copyWith(
                isAchived: event.isAchived,
                set: event.set,
                silenced: event.silenced,
                favorite: event.favorite,
              );
            }
            return partograph;
          }).toList();

          emit(PartographsState.loaded(updatedList));
        }
      }
    } catch (e) {
      emit(const PartographsState.error('Error al actualizar el partograma'));
    }
  }

  Future<void> _onDeletePartograph(
    DeletePartograph event,
    Emitter<PartographsState> emit,
  ) async {
    if (state is Loaded) {
      final currentState = state as Loaded;

      emit(const PartographsState.loading());

      try {
        // Llamar al caso de uso para eliminar el partograma
        final wasDeleted = await _deletePartographUseCase.execute(
          partographId: event.partographId,
        );

        // ignore: unnecessary_null_comparison
        if (wasDeleted != null) {
          // Filtrar la lista actual eliminando el partograma correspondiente
          final updatedList = currentState.data
              .where(
                (partograph) => partograph.partographId != event.partographId,
              )
              .toList();

          if (updatedList.isEmpty) {
            emit(const PartographsState.empty());
          } else {
            emit(PartographsState.loaded(updatedList));
          }
        } else {
          emit(
            const PartographsState.error(
              'No se pudo eliminar el partograma.',
            ),
          );
        }
      } catch (e) {
        emit(const PartographsState.error('Error al eliminar el partograma'));
      }
    } else {
      emit(
        const PartographsState.error(
          'Estado inválido: no se puede eliminar el partograma.',
        ),
      );
    }
  }
}
