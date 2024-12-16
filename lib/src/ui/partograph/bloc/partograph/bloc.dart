import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographBloc extends Bloc<PartographEvent, PartographState> {
  final PartographGetUsecase _partographGetUsecase;
  final PartographUpdateUsecase _partographUpdateUsecase;
  final CervicalDilationCreateUseCase _cervicalDilationCreateUseCase;
  final CervicalDilationUpdateUseCase _cervicalDilationUpdateUseCase;
  final CervicalDilationDeleteUseCase _cervicalDilationDeleteUseCase;
  final MedicalSurveillanceCreateUsecase _medicalSurveillanceCreateUsecase;
  final MedicalSurveillanceUpdateUsecase _medicalSurveillanceUpdateUsecase;
  final PresentationPositionVarietyCreateUsecase
      _presentationPositionVarietyCreateUsecase;
  final PresentationPositionVarietyUpdateUsecase
      _presentationPositionVarietyUpdateUsecase;
  final ContractionFrequencyCreateUsecase _contractionFrequencyCreateUsecase;
  final ContractionFrequencyUpdateUsecase _contractionFrequencyUpdateUsecase;
  final FetalHeartRateCreateUsecase _fetalHeartRateCreateUsecase;
  final FetalHeartRateUpdateUsecase _fetalHeartRateUpdateUsecase;
  final ChildbirthNoteCreateUseCase _childbirthNoteCreateUseCase;
  final ChildbirthNoteUpdateUseCase _childbirthNoteUpdateUseCase;
  final AlertCurvesGetUseCase _alertCurvesGetUsecase;

  PartographBloc(
    this._partographGetUsecase,
    this._partographUpdateUsecase,
    this._cervicalDilationCreateUseCase,
    this._cervicalDilationUpdateUseCase,
    this._cervicalDilationDeleteUseCase,
    this._alertCurvesGetUsecase,
    this._medicalSurveillanceCreateUsecase,
    this._medicalSurveillanceUpdateUsecase,
    this._presentationPositionVarietyCreateUsecase,
    this._presentationPositionVarietyUpdateUsecase,
    this._contractionFrequencyCreateUsecase,
    this._contractionFrequencyUpdateUsecase,
    this._fetalHeartRateCreateUsecase,
    this._fetalHeartRateUpdateUsecase,
    this._childbirthNoteCreateUseCase,
    this._childbirthNoteUpdateUseCase,
  ) : super(const Initial()) {
    on<onFetchData>(_onFetchData);
    on<ModifyingPartograph>(_onUpdatePartograph);
    on<SaveCervicalDilation>(_saveCervicalDilation);
    on<UpdateCervicalDilation>(_onUpdateCervicalDilation);
    on<DeleteCervicalDilation>(_onDeleteCervicalDilation);
    on<CreateMedicalSurveillance>(_onCreateMedicalSurveillance);
    on<UpdateMedicalSurveillance>(_onUpdateMedicalSurveillance);
    on<CreatePresentationPositionVariety>(_onCreatePresentationVarietyPosition);
    on<UpdatePresentationPositionVariety>(_onUpdatePresentationVarietyPosition);
    on<CreateFetalHeartRate>(_onCreateFetalHeartRate);
    on<UpdateFetalHeartRate>(_onUpdateFetalHeartRate);
    on<CreateContractionFrequency>(_onCreateContractionFrequency);
    on<UpdateContractionFrequency>(_onUpdateContractionFrequency);
    on<CreateChildbirthNote>(_onCreateChildbirthNote);
    on<UpdateChildbirthNote>(_onUpdateChildbirthNote);
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
          message: 'Partograma cargado correctamente',
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

  Future<void> _onUpdatePartograph(
    ModifyingPartograph event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final newDilation = await _partographUpdateUsecase.execute(
        partographId: event.partographId,
        name: event.name,
        recordName: event.recordName,
        date: event.date,
        observation: event.observation,
        worktime: event.workTime,
      );

      if (newDilation != null && state is Loaded) {
        emit(
          Loaded(
            partograph: newDilation,
            message: 'Partograma actualizado correctamente',
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

      final value = currentState.partograph.medicalSurveillanceTable!.length;

      final letter = _intToChar(value + 1);

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
            message: 'Elemento añadido a la tabla correctamente',
          ),
        );
      } else {
        emit(const Error('Error al añadir a la tabla'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

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
            message: 'Elemento actualizado correctamente',
          ),
        );
      } else {
        emit(const Error('Error al actualizar el elemento'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onCreatePresentationVarietyPosition(
    CreatePresentationPositionVariety event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;
      final newEntry = await _presentationPositionVarietyCreateUsecase.execute(
        partographId: event.partographId,
        hodgePlane: event.hodgePlane,
        position: event.position,
        time: event.time,
      );
      if (state is Loaded && newEntry != null) {
        final presentationPositionVarietyList =
            List<PresentationPositionVariety>.from(
          currentState.partograph.presentationPositionVarieties ?? [],
        )..add(newEntry);

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              presentationPositionVarieties: presentationPositionVarietyList,
            ),
            message:
                'Elemento de la altura de la presentacion añadido correctamente',
          ),
        );
      } else {
        emit(const Error('Error al añadir'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onUpdatePresentationVarietyPosition(
    UpdatePresentationPositionVariety event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final updatedEntry =
          await _presentationPositionVarietyUpdateUsecase.execute(
        id: event.id,
        partographId: event.partographId,
        hodgePlane: event.hodgePlane,
        position: event.position,
        time: event.time,
      );
      if (state is Loaded && updatedEntry != null) {
        final currentState = state as Loaded;

        // Actualizar la lista `medicalSurveillanceTable` reemplazando el elemento actualizado
        final presentationPositionVarietiesList =
            List<PresentationPositionVariety>.from(
          currentState.partograph.presentationPositionVarieties!,
        )..[currentState.partograph.presentationPositionVarieties!
                    .indexWhere((entry) => entry.id == updatedEntry.id)] =
                updatedEntry;

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              presentationPositionVarieties: presentationPositionVarietiesList,
            ),
            message:
                'Elemento de la altura de la presentacion modificado correctamente',
          ),
        );
      } else {
        emit(const Error('Error al modificar'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onCreateFetalHeartRate(
    CreateFetalHeartRate event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;
      final newEntry = await _fetalHeartRateCreateUsecase.execute(
        partographId: event.partographId,
        value: event.value,
        time: event.time,
      );
      if (state is Loaded && newEntry != null) {
        final fetalHeartRateList = List<FetalHeartRate>.from(
          currentState.partograph.fetalHeartRates ?? [],
        )..add(newEntry);

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              fetalHeartRates: fetalHeartRateList,
            ),
            message: 'Frec. Cardiaca Fetal añadido correctamente',
          ),
        );
      } else {
        emit(const Error('Error al añadir'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onUpdateFetalHeartRate(
    UpdateFetalHeartRate event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final updatedEntry = await _fetalHeartRateUpdateUsecase.execute(
        id: event.id,
        partographId: event.partographId,
        value: event.value,
        time: event.time,
      );
      if (state is Loaded && updatedEntry != null) {
        final currentState = state as Loaded;

        // Actualizar la lista `medicalSurveillanceTable` reemplazando el elemento actualizado
        final fetalHeartRateList = List<FetalHeartRate>.from(
          currentState.partograph.fetalHeartRates!,
        )..[currentState.partograph.fetalHeartRates!
            .indexWhere((entry) => entry.id == updatedEntry.id)] = updatedEntry;

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              fetalHeartRates: fetalHeartRateList,
            ),
            message: 'Frec. Cardiaca Fetal modificado correctamente',
          ),
        );
      } else {
        emit(const Error('Ocurrio un error modificando'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onCreateContractionFrequency(
    CreateContractionFrequency event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;
      final newEntry = await _contractionFrequencyCreateUsecase.execute(
        partographId: event.partographId,
        value: event.value,
        time: event.time,
      );
      if (state is Loaded && newEntry != null) {
        final contractionFrequencyList = List<ContractionFrequency>.from(
          currentState.partograph.contractionFrequencies ?? [],
        )..add(newEntry);

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              contractionFrequencies: contractionFrequencyList,
            ),
            message: 'Frec. Contracciones añadido correctamente',
          ),
        );
      } else {
        emit(const Error('Ocurrio un error al añadir'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onUpdateContractionFrequency(
    UpdateContractionFrequency event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final updatedEntry = await _contractionFrequencyUpdateUsecase.execute(
        id: event.id,
        partographId: event.partographId,
        value: event.value,
        time: event.time,
      );
      if (state is Loaded && updatedEntry != null) {
        final currentState = state as Loaded;

        // Actualizar la lista `medicalSurveillanceTable` reemplazando el elemento actualizado
        final contractionFrequencyList = List<ContractionFrequency>.from(
          currentState.partograph.contractionFrequencies!,
        )..[currentState.partograph.contractionFrequencies!
            .indexWhere((entry) => entry.id == updatedEntry.id)] = updatedEntry;

        // Emitir el estado `Loaded` con el partograma actualizado parcialmente
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              contractionFrequencies: contractionFrequencyList,
            ),
            message: 'Frec. Contracciones modificado correctamente',
          ),
        );
      } else {
        emit(const Error('Frec. Contracciones no modificado'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onCreateChildbirthNote(
    CreateChildbirthNote event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;
      final newEntry = await _childbirthNoteCreateUseCase.execute(
        partographId: event.partographId,
        hour: event.hour,
        sex: event.sex,
        apgar: event.apgar,
        temperature: event.temperature,
        caputto: event.caputto,
        circular: event.circular,
        lamniotico: event.lamniotico,
        miccion: event.miccion,
        meconio: event.meconio,
        pa: event.pa,
        expulsivo: event.expulsivo,
        placenta: event.placenta,
        alumbramiento: event.alumbramiento,
        huellaPlantar: event.huellaPlantar,
        pc: event.pc,
        talla: event.talla,
        brazalete: event.brazalete,
        huellaDig: event.huellaDig,
      );
      if (state is Loaded && newEntry != null) {
        // Actualizar el estado con la nueva nota de parto
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              childbirthNote: newEntry,
            ),
            message: 'Nota de parto añadida correctamente.',
          ),
        );
      } else {
        emit(const Error('Ocurrió un error al crear la nota de parto.'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  Future<void> _onUpdateChildbirthNote(
    UpdateChildbirthNote event,
    Emitter<PartographState> emit,
  ) async {
    try {
      final currentState = state as Loaded;
      final newEntry = await _childbirthNoteUpdateUseCase.execute(
        partographId: event.partographId,
        hour: event.hour,
        sex: event.sex,
        apgar: event.apgar,
        temperature: event.temperature,
        caputto: event.caputto,
        circular: event.circular,
        lamniotico: event.lamniotico,
        miccion: event.miccion,
        meconio: event.meconio,
        pa: event.pa,
        expulsivo: event.expulsivo,
        placenta: event.placenta,
        alumbramiento: event.alumbramiento,
        huellaPlantar: event.huellaPlantar,
        pc: event.pc,
        talla: event.talla,
        brazalete: event.brazalete,
        huellaDig: event.huellaDig,
      );
      if (state is Loaded && newEntry != null) {
        // Actualizar el estado con la nueva nota de parto
        emit(
          Loaded(
            partograph: currentState.partograph.copyWith(
              childbirthNote: newEntry,
            ),
            message: 'Nota de parto modificada correctamente',
          ),
        );
      } else {
        emit(const Error('Ocurrió un error al modificar la nota de parto'));
      }
    } catch (error) {
      emit(const Error('Ocurrio un error inesperado'));
    }
  }

  String _intToChar(int number) {
    // Sumar 96 para obtener el código Unicode correspondiente
    return String.fromCharCode(96 + number);
  }
}
