import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_state_update_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographsBloc extends Bloc<PartographsEvent, PartographsState> {
  final GetPartographListUseCase _partographsGetUseCase;
  final UpdatePartographStateUseCase _updatePartographStateStateUsecase;

  PartographsBloc(
      this._partographsGetUseCase, this._updatePartographStateStateUsecase)
      : super(const PartographsState.initial()) {
    on<FetchPartographs>(_onPostFetched);
    on<UpdatePartographState>(_onUpdatePartographState);
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
      emit(const PartographsState.error('Error al cargar los partograma'));
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
}
