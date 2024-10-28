import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographBloc extends Bloc<PartographEvent, PartographState> {
  final PartographGetUsecase _partographGetUsecase;
  final CervicalDilationCreateUseCase _cervicalDilationCreateUseCase;
  final CervicalDilationGetUseCase _cervicalDilationGetUseCase;
  final CervicalDilationUpdateUseCase _cervicalDilationUpdateUseCase;
  final CervicalDilationDeleteUseCase _cervicalDilationDeleteUseCase;

  PartographBloc(
    this._partographGetUsecase,
    this._cervicalDilationCreateUseCase,
    this._cervicalDilationGetUseCase,
    this._cervicalDilationUpdateUseCase,
    this._cervicalDilationDeleteUseCase,
  ) : super(const Initial()) {
    on<onFetchData>(_onFetchData);
    on<SaveCervicalDilation>(_saveCervicalDilation);
    on<UpdateCervicalDilation>(_onUpdateCervicalDilation);
    on<DeleteCervicalDilation>(_onDeleteCervicalDilation);
  }

  Future<void> _onFetchData(
    onFetchData event,
    Emitter<PartographState> emit,
  ) async {
    try {
      emit(const Loading());
      final result = await _partographGetUsecase.execute(
        partographId: event.partographId,
      );

      emit(
        Loaded(
          partograph: result,
          message: 'Elementos cargados correctamente',
        ),
      );
    } catch (e) {
      emit(Error(e.toString()));
    }
  }

  Future<void> _saveCervicalDilation(
    SaveCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final result = await _cervicalDilationCreateUseCase.execute(
        partographId: event.partographId,
        value: event.value,
        hour: event.hour,
        remOrRam: event.remOrRam,
        userId: event.userId,
      );
    } catch (ex) {
      emit(Error(ex.toString()));
    }
  }

  Future<void> _onUpdateCervicalDilation(
    UpdateCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final result = await _cervicalDilationUpdateUseCase.execute(
        id: event.id,
        partographId: event.partographId,
        value: event.value,
        hour: event.hour,
        remOrRam: event.remOrRam,
        userId: event.userId,
      );
      if (result == null) {
        emit(const Error('Ocurrio un error'));
      } else {
        //final currentState = state as Loaded;
      }
    } catch (ex) {
      emit(Error(ex.toString()));
    }
  }

  Future<void> _onDeleteCervicalDilation(
    DeleteCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final result = await _cervicalDilationDeleteUseCase.execute(
        id: event.id,
        userId: event.userId,
      );
      // ignore: unrelated_type_equality_checks
    } catch (ex) {
      emit(Error(ex.toString()));
    }
  }
}
