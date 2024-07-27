import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_create_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreatePartographBloc
    extends Bloc<CreatePartographEvent, CreatePartographState> {
  final PartographCreateUseCase _partographCreateUseCase;
  CreatePartographBloc(this._partographCreateUseCase) : super(const Initial()) {
    on<Save>(_onSave);
  }

  Future<void> _onSave(
    Save event,
    Emitter<CreatePartographState> emit,
  ) async {
    emit(const Loading());
    try {
      final result = await _partographCreateUseCase.execute(
        partogramaId: event.partogramaId,
        name: event.name,
        recordName: event.recordName,
        date: event.date,
        observation: event.observation,
        worktime: event.worktime,
        createBy: event.createBy,
      );
      if (result == null) {
        emit(const Error('Ocurrio un error al crear los partograma'));
      } else {
        emit(
          IsSaved(
            message: 'Se guardo correctamente',
            partographId: result.partographId,
          ),
        );
      }
    } catch (e) {
      emit(const Error('Ocurrio un error al crear los partograma'));
    }
  }
}
