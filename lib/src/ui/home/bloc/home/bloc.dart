import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/ui/home/bloc/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/bloc/home/states_events/partographs_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographsBloc extends Bloc<PartographsEvent, PartographsState> {
  final PartographGetUseCase _partographGetUseCase;
  PartographsBloc(this._partographGetUseCase)
      : super(const PartographsState.initial()) {
    on<FetchPartographs>(_onPostFetched);
  }

  Future<void> _onPostFetched(
    FetchPartographs event,
    Emitter<PartographsState> emit,
  ) async {
    emit(const PartographsState.loading());
    try {
      final result = await _partographGetUseCase.execute(event.userId);
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

}
