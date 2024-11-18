import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographBloc extends Bloc<PartographEvent, PartographState> {
  final PartographGetUsecase _partographGetUsecase;
  final CervicalDilationCreateUseCase _cervicalDilationCreateUseCase;
  final CervicalDilationUpdateUseCase _cervicalDilationUpdateUseCase;
  final CervicalDilationDeleteUseCase _cervicalDilationDeleteUseCase;
  final MedicalSurveillanceCreateUsecase _medicalSurveillanceCreateUsecase;
  final MedicalSurveillanceUpdateUsecase _medicalSurveillanceUpdateUsecase;
  final AlertCurvesGetUseCase _alertCurvesGetUsecase;

  PartographBloc(
    this._partographGetUsecase,
    this._cervicalDilationCreateUseCase,
    this._cervicalDilationUpdateUseCase,
    this._cervicalDilationDeleteUseCase,
    this._alertCurvesGetUsecase,
    this._medicalSurveillanceCreateUsecase,
    this._medicalSurveillanceUpdateUsecase,
  ) : super(const Initial()) {
    on<onFetchData>(_onFetchData);
    on<SaveCervicalDilation>(_saveCervicalDilation);
    on<UpdateCervicalDilation>(_onUpdateCervicalDilation);
    on<DeleteCervicalDilation>(_onDeleteCervicalDilation);
    on<CreateMedicalSurveillance>(_onCreateMedicalSurveillance);
    on<UpdateMedicalSurveillance>(_onUpdateMedicalSurveillance);
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
      final newDilation = await _cervicalDilationCreateUseCase.execute(
        partographId: event.partographId,
        value: event.value,
        hour: event.hour,
        remOrRam: event.remOrRam,
      );

      if (newDilation != null && state is Loaded) {
        final currentState = state as Loaded;

        final updatedAlertCurves = await _alertCurvesGetUsecase.execute(
          partographId: event.partographId,
        );

        // Creamos una nueva lista con la dilatación añadida
        final updatedDilations = List<CervicalDilation>.from(
          currentState.partograph.cervicalDilations ?? [],
        )..add(newDilation);

        // Creamos una nueva instancia del partograma con la lista actualizada
        final updatedPartograph = currentState.partograph.copyWith(
          cervicalDilations: updatedDilations,
          curves: updatedAlertCurves,
        );

        // Emitimos el nuevo estado con el partograma actualizado
        emit(
          Loaded(
            partograph: updatedPartograph,
            message: 'Dilatación cervical guardada correctamente',
          ),
        );
      } else {
        emit(const Error('Error al guardar la dilatación cervical'));
      }
    } catch (ex) {
      emit(Error(ex.toString()));
    }
  }

  Future<void> _onUpdateCervicalDilation(
    UpdateCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final updatedDilation = await _cervicalDilationUpdateUseCase.execute(
        id: event.id,
        partographId: event.partographId,
        value: event.value,
        hour: event.hour,
        remOrRam: event.remOrRam,
      );

      if (state is Loaded && updatedDilation != null) {
        final currentState = state as Loaded;

        final updatedAlertCurves = await _alertCurvesGetUsecase.execute(
          partographId: event.partographId,
        );

        final updatedDilations = List<CervicalDilation>.from(
          currentState.partograph.cervicalDilations!,
        )..[currentState.partograph.cervicalDilations!
            .indexWhere((d) => d.id == updatedDilation.id)] = updatedDilation;

        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              cervicalDilations: updatedDilations,
              curves: updatedAlertCurves,
            ),
            message: 'Dilatación cervical actualizada correctamente',
          ),
        );
      } else {
        emit(const Error('No se pudo actualizar la dilatación cervical'));
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
      final deletedDilation =
          await _cervicalDilationDeleteUseCase.execute(id: event.id);

      if (state is Loaded && deletedDilation != null) {
        final currentState = state as Loaded;

        final updatedAlertCurves = await _alertCurvesGetUsecase.execute(
          partographId: currentState.partograph.partographId!,
        );

        final updatedDilations = currentState.partograph.cervicalDilations!
            .where((d) => d.id != deletedDilation.id)
            .toList();

        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              cervicalDilations: updatedDilations,
              curves: updatedAlertCurves,
            ),
            message: 'Dilatación cervical eliminada correctamente',
          ),
        );
      } else {
        emit(const Error('No se pudo eliminar la dilatación cervical'));
      }
    } catch (ex) {
      emit(Error(ex.toString()));
    }
  }

  Future<void> _onCreateMedicalSurveillance(
    CreateMedicalSurveillance event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;

      final value =  currentState.partograph.medicalSurveillanceTable!.length;

      final letter =_intToChar(value+1);

      final newEntry = await _medicalSurveillanceCreateUsecase.execute(
        partographId: event.partographId,
        letter: letter,
        maternalPosition: event.maternalPosition,
        arterialPressure: event.arterialPressure,
        maternalPulse: event.maternalPulse,
        fetalHeartRate: event.fetalHeartRate,
        contractionsDuration: event.contractionsDuration,
        frequencyContractions: event.frequencyContractions,
        pain: event.pain,
        time: event.time,
      );



      if (state is Loaded && newEntry != null) {

        // Crear una nueva lista de `MedicalSurveillanceTable` con el nuevo registro añadido
        final updatedMedicalSurveillanceList =
            List<MedicalSurveillanceTable>.from(
          currentState.partograph.medicalSurveillanceTable ?? [],
        )..add(newEntry);

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              medicalSurveillanceTable: updatedMedicalSurveillanceList,
            ),
            message: 'Medical Surveillance añadido correctamente',
          ),
        );
      } else {
        emit(const Error('Error al añadir Medical Surveillance'));
      }
    } catch (error) {
      emit(Error(error.toString()));
    }
  }

  // Método para manejar la actualización de registros en MedicalSurveillanceTable
  Future<void> _onUpdateMedicalSurveillance(
    UpdateMedicalSurveillance event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final updatedEntry = await _medicalSurveillanceUpdateUsecase.execute(
        id: event.id,
        partographId: event.partographId,
        letter: event.letter,
        maternalPosition: event.maternalPosition,
        arterialPressure: event.arterialPressure,
        maternalPulse: event.maternalPulse,
        fetalHeartRate: event.fetalHeartRate,
        contractionsDuration: event.contractionsDuration,
        frequencyContractions: event.frequencyContractions,
        pain: event.pain,
        time: event.time,
      );

      if (state is Loaded && updatedEntry != null) {
        final currentState = state as Loaded;

        // Actualizar la lista `medicalSurveillanceTable` reemplazando el elemento actualizado
        final updatedMedicalSurveillanceList =
            List<MedicalSurveillanceTable>.from(
          currentState.partograph.medicalSurveillanceTable!,
        )..[currentState.partograph.medicalSurveillanceTable!
                    .indexWhere((entry) => entry.id == updatedEntry.id)] =
                updatedEntry;

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              medicalSurveillanceTable: updatedMedicalSurveillanceList,
            ),
            message: 'Medical Surveillance actualizado correctamente',
          ),
        );
      } else {
        emit(const Error('Error al actualizar Medical Surveillance'));
      }
    } catch (error) {
      emit(Error(error.toString()));
    }
  }

  String _intToChar(int number) {
  // Sumar 96 para obtener el código Unicode correspondiente
  return String.fromCharCode(96 + number);
}
}
