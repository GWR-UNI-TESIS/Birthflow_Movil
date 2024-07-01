import 'package:birthflow_movil/src/domain/partograma/usecases/partograma_get_usecase.dart';
import 'package:birthflow_movil/src/ui/home/bloc/states_events/partogramas_event.dart';
import 'package:birthflow_movil/src/ui/home/bloc/states_events/partogramas_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartogramasBloc extends Bloc<PartogramasEvent, PartogramasState> {
  final PartogramaGetUseCase _partogramaGetUseCase;

  PartogramasBloc(this._partogramaGetUseCase)
      : super(const PartogramasState.initial()) {
    on<FetchPartogramas>(_onPostFetched);
  }

  Future<void> _onPostFetched(
    PartogramasEvent event,
    Emitter<PartogramasState> emit,
  ) async {
    emit(const PartogramasState.loading());
    try {
      final result = await _partogramaGetUseCase.execute(event.userId);
      if (result != null) {
        if (result.isEmpty) {
          emit(const PartogramasState.empty());
        } else {
          emit(PartogramasState.loaded(result));
        }
      }
    } catch (e) {
      emit(const PartogramasState.error('Error al cargar los partograma'));
    }
  }
}
