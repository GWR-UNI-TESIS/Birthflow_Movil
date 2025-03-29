// ignore_for_file: unnecessary_null_comparison

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
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographBloc extends Bloc<PartographEvent, PartographState> {
  final GetPartographUseCase _getPartographUseCase;
  final UpdatePartographUsecase _updatePartographUsecase;
  final DeletePartographUseCase _deletePartographUseCase;
  final CreateCervicalDilationUseCase _createCervicalDilationUseCase;
  final UpdateCervicalDilationUseCase _updateCervicalDilationUseCase;
  final DeleteCervicalDilationUseCase _deleteCervicalDilationUseCase;
  final CreateMedicalSurveillanceUseCase _createMedicalSurveillanceUseCase;
  final UpdateMedicalSurveillanceUseCase _updateMedicalSurveillanceUseCase;
  final CreatePresentationPositionVarietyUseCase
      _createPresentationPositionVarietyUseCase;
  final UpdatePresentationPositionVarietyUseCase
      _updatePresentationPositionVarietyUseCase;
  final CreateContractionFrequencyUseCase _createContractionFrequencyUseCase;
  final UpdateContractionFrequencyUseCase _updateContractionFrequencyUseCase;
  final CreateFetalHeartRateUseCase _createFetalHeartRateUseCase;
  final UpdateFetalHeartRateUseCase _updateFetalHeartRateUseCase;
  final CreateChildbirthNoteUseCase _createChildbirthNoteUseCase;
  final UpdateChildbirthNoteUseCase _updateChildbirthNoteUseCase;
  final GetAlertCurvesUseCase _getAlertCurvesUseCase;

  PartographBloc(
    this._getPartographUseCase,
    this._updatePartographUsecase,
    this._deletePartographUseCase,
    this._createCervicalDilationUseCase,
    this._updateCervicalDilationUseCase,
    this._deleteCervicalDilationUseCase,
    this._getAlertCurvesUseCase,
    this._createMedicalSurveillanceUseCase,
    this._updateMedicalSurveillanceUseCase,
    this._createPresentationPositionVarietyUseCase,
    this._updatePresentationPositionVarietyUseCase,
    this._createContractionFrequencyUseCase,
    this._updateContractionFrequencyUseCase,
    this._createFetalHeartRateUseCase,
    this._updateFetalHeartRateUseCase,
    this._createChildbirthNoteUseCase,
    this._updateChildbirthNoteUseCase,
  ) : super(const Initial()) {
    on<onFetchData>(_onFetchData);
    on<ModifyingPartograph>(_onUpdatePartograph);
    on<SaveCervicalDilation>(_saveCervicalDilation);
    on<OnDeletePartograph>(_onDeletePartograph);
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
      final result = await _getPartographUseCase.execute(
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

  Future<void> _onUpdatePartograph(
    ModifyingPartograph event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Emitir estado transitorio mientras se actualizan los datos
      emit(const Loading());

      try {
        // Llamar al caso de uso para actualizar los campos específicos
        final updatedPartograph = await _updatePartographUsecase.execute(
          partographId: event.partographId,
          name: event.name,
          recordName: event.recordName,
          date: event.date,
          observation: event.observation,
          worktime: event.workTime,
        );

        // Validar la respuesta y emitir el nuevo estado Loaded con los datos actualizados
        if (updatedPartograph != null) {
          // Combinar los datos existentes con los nuevos (si es necesario)
          final mergedPartograph = currentPartograph.copyWith(
            name: updatedPartograph.name,
            recordName: updatedPartograph.recordName,
            date: updatedPartograph.date,
            observation: updatedPartograph.observation,
            workTime: updatedPartograph.workTime,
          );

          emit(
            Loaded(
              partograph: mergedPartograph,
              message: 'Campos del partograma actualizados correctamente',
            ),
          );
        } else {
          // Si la actualización falla, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message:
                  'Error: No se pudo actualizar los campos del partograma.',
            ),
          );
        }
      } catch (ex) {
        // Capturar errores y regresar al estado Loaded con un mensaje de error
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al actualizar los campos del partograma: $ex',
          ),
        );
      }
    } else {
      // Emitir un estado de error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se puede actualizar el partograma.',
        ),
      );
    }
  }

  Future<void> _onDeletePartograph(
    OnDeletePartograph event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Emitir un estado de carga temporal
      emit(const Loading());

      try {
        // Llamar al caso de uso para eliminar el partograma
        final wasDeleted = await _deletePartographUseCase.execute(
          partographId: event.partographId,
        );

        if (wasDeleted != null) {
          // Emitir el estado con un mensaje de éxito
          emit(
            Loaded(
              partograph: wasDeleted,
              message: 'Partograma eliminado correctamente',
              isDeleteEvent: true,
            ),
          );
        } else {
          // Regresar al estado anterior con un mensaje de error si la eliminación falla
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo eliminar el partograma.',
            ),
          );
        }
      } catch (ex) {
        // Manejar errores y regresar al estado anterior con un mensaje de error
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al eliminar el partograma: $ex',
          ),
        );
      }
    } else {
      // Emitir un estado de error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se puede eliminar el partograma.',
        ),
      );
    }
  }

  Future<void> _saveCervicalDilation(
    SaveCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer los datos necesarios antes de emitir el estado de carga
      final currentDilations = List<CervicalDilation>.from(
        currentPartograph.cervicalDilations ?? [],
      );

      // Emitir estado de carga
      emit(const Loading());

      try {
        // Intentar crear una nueva dilatación cervical
        final newDilation = await _createCervicalDilationUseCase.execute(
          partographId: event.partographId,
          value: event.value,
          hour: event.hour,
          remOrRam: event.remOrRam,
        );

        if (newDilation != null) {
          // Actualizar curvas de alerta
          final updatedAlertCurves = await _getAlertCurvesUseCase.execute(
            partographId: event.partographId,
          );

          // Crear nueva lista de dilataciones con la nueva añadida
          final updatedDilations = List<CervicalDilation>.from(currentDilations)
            ..add(newDilation);

          // Crear instancia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            cervicalDilations: updatedDilations,
            curves: updatedAlertCurves,
          );

          // Emitir el nuevo estado con el partograma actualizado
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Dilatación cervical guardada correctamente',
            ),
          );
        } else {
          // Si `newDilation` es null, regresar al estado anterior con un mensaje
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo guardar la dilatación cervical.',
            ),
          );
        }
      } catch (ex) {
        // Si ocurre un error, regresar al estado anterior con el mensaje de error
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al guardar la dilatación cervical: $ex',
          ),
        );
      }
    } else {
      // Emitir un estado de error si no se cumple la condición inicial
      emit(
        const Error(
          'Estado inválido: no se pudo guardar la dilatación cervical.',
        ),
      );
    }
  }

  Future<void> _onUpdateCervicalDilation(
    UpdateCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de dilataciones antes de cambiar el estado
      final currentDilations = List<CervicalDilation>.from(
        currentPartograph.cervicalDilations ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar la dilatación cervical
        final updatedDilation = await _updateCervicalDilationUseCase.execute(
          id: event.id,
          partographId: event.partographId,
          value: event.value,
          hour: event.hour,
          remOrRam: event.remOrRam,
        );

        if (updatedDilation != null) {
          // Actualizar las curvas de alerta
          final updatedAlertCurves = await _getAlertCurvesUseCase.execute(
            partographId: event.partographId,
          );

          // Reemplazar la dilatación actualizada en la lista
          final updatedDilations =
              List<CervicalDilation>.from(currentDilations);
          final index =
              updatedDilations.indexWhere((d) => d.id == updatedDilation.id);

          if (index != -1) {
            updatedDilations[index] = updatedDilation;

            // Crear una copia actualizada del partograma
            final updatedPartograph = currentPartograph.copyWith(
              cervicalDilations: updatedDilations,
              curves: updatedAlertCurves,
            );

            // Emitir el estado Loaded con los datos actualizados
            emit(
              Loaded(
                partograph: updatedPartograph,
                message: 'Dilatación cervical actualizada correctamente',
              ),
            );
          } else {
            // Si el índice no se encuentra, emitir un mensaje de error
            emit(
              Loaded(
                partograph: currentPartograph,
                message:
                    'Error: No se pudo encontrar la dilatación para actualizar.',
              ),
            );
          }
        } else {
          // Emitir estado Loaded anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo actualizar la dilatación cervical.',
            ),
          );
        }
      } catch (ex) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al actualizar la dilatación cervical: $ex',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo actualizar la dilatación cervical.',
        ),
      );
    }
  }

  Future<void> _onDeleteCervicalDilation(
    DeleteCervicalDilation event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de dilataciones antes de cambiar el estado
      final currentDilations = List<CervicalDilation>.from(
        currentPartograph.cervicalDilations ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar eliminar la dilatación cervical
        final deletedDilation =
            await _deleteCervicalDilationUseCase.execute(id: event.id);

        if (deletedDilation != null) {
          // Actualizar las curvas de alerta
          final updatedAlertCurves = await _getAlertCurvesUseCase.execute(
            partographId: currentPartograph.partographId!,
          );

          // Crear nueva lista excluyendo la dilatación eliminada
          final updatedDilations = currentDilations
              .where((d) => d.id != deletedDilation.id)
              .toList();

          // Crear una copia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            cervicalDilations: updatedDilations,
            curves: updatedAlertCurves,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Dilatación cervical eliminada correctamente',
            ),
          );
        } else {
          // Si `deletedDilation` es null, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo eliminar la dilatación cervical.',
            ),
          );
        }
      } catch (ex) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al eliminar la dilatación cervical: $ex',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo eliminar la dilatación cervical.',
        ),
      );
    }
  }

  Future<void> _onCreateMedicalSurveillance(
    CreateMedicalSurveillance event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de MedicalSurveillanceTable antes de cambiar el estado
      final currentSurveillanceList = List<MedicalSurveillanceTable>.from(
        currentPartograph.medicalSurveillanceTable ?? [],
      );

      // Determinar la letra para el nuevo registro
      final value = currentSurveillanceList.length;
      final letter = _intToChar(value + 1);

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Crear nuevo registro de MedicalSurveillance
        final newEntry = await _createMedicalSurveillanceUseCase.execute(
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

        if (newEntry != null) {
          // Crear nueva lista con el registro añadido
          final updatedMedicalSurveillanceList =
              List<MedicalSurveillanceTable>.from(
            currentSurveillanceList,
          )..add(newEntry);

          // Crear una copia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            medicalSurveillanceTable: updatedMedicalSurveillanceList,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Elemento añadido a la tabla correctamente',
            ),
          );
        } else {
          // Si no se puede crear el registro, regresar al estado anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo añadir el elemento a la tabla.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al añadir el elemento a la tabla: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo añadir el elemento a la tabla.',
        ),
      );
    }
  }

  Future<void> _onUpdateMedicalSurveillance(
    UpdateMedicalSurveillance event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de MedicalSurveillanceTable antes de cambiar el estado
      final currentSurveillanceList = List<MedicalSurveillanceTable>.from(
        currentPartograph.medicalSurveillanceTable ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar el registro
        final updatedEntry = await _updateMedicalSurveillanceUseCase.execute(
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

        if (updatedEntry != null) {
          // Reemplazar el registro actualizado en la lista
          final index = currentSurveillanceList
              .indexWhere((entry) => entry.id == updatedEntry.id);
          if (index != -1) {
            currentSurveillanceList[index] = updatedEntry;

            // Crear una copia actualizada del partograma
            final updatedPartograph = currentPartograph.copyWith(
              medicalSurveillanceTable: currentSurveillanceList,
            );

            // Emitir el estado Loaded con los datos actualizados
            emit(
              Loaded(
                partograph: updatedPartograph,
                message: 'Elemento actualizado correctamente',
              ),
            );
          } else {
            // Si el índice no se encuentra, emitir un mensaje de error
            emit(
              Loaded(
                partograph: currentPartograph,
                message: 'Error: No se encontró el elemento para actualizar.',
              ),
            );
          }
        } else {
          // Emitir estado Loaded anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo actualizar el elemento.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al actualizar el elemento: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(const Error('Estado inválido: no se pudo actualizar el elemento.'));
    }
  }

  Future<void> _onCreatePresentationVarietyPosition(
    CreatePresentationPositionVariety event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de PresentationPositionVariety antes de cambiar el estado
      final currentPresentationVarieties =
          List<PresentationPositionVariety>.from(
        currentPartograph.presentationPositionVarieties ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar crear un nuevo registro
        final newEntry =
            await _createPresentationPositionVarietyUseCase.execute(
          partographId: event.partographId,
          hodgePlane: event.hodgePlane,
          position: event.position,
          time: event.time,
        );

        if (newEntry != null) {
          // Crear nueva lista con el registro añadido
          final updatedPresentationVarieties =
              List<PresentationPositionVariety>.from(
            currentPresentationVarieties,
          )..add(newEntry);

          // Crear una copia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            presentationPositionVarieties: updatedPresentationVarieties,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message:
                  'Elemento de la altura de la presentación añadido correctamente',
            ),
          );
        } else {
          // Si no se pudo crear el registro, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message:
                  'Error: No se pudo añadir el elemento de altura de presentación.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message:
                'Error al añadir el elemento de altura de presentación: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo añadir el elemento de altura de presentación.',
        ),
      );
    }
  }

  Future<void> _onUpdatePresentationVarietyPosition(
    UpdatePresentationPositionVariety event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de PresentationPositionVariety antes de cambiar el estado
      final currentPresentationVarieties =
          List<PresentationPositionVariety>.from(
        currentPartograph.presentationPositionVarieties ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar el registro
        final updatedEntry =
            await _updatePresentationPositionVarietyUseCase.execute(
          id: event.id,
          partographId: event.partographId,
          hodgePlane: event.hodgePlane,
          position: event.position,
          time: event.time,
        );

        if (updatedEntry != null) {
          // Reemplazar el registro actualizado en la lista
          final index = currentPresentationVarieties
              .indexWhere((entry) => entry.id == updatedEntry.id);

          if (index != -1) {
            currentPresentationVarieties[index] = updatedEntry;

            // Crear una copia actualizada del partograma
            final updatedPartograph = currentPartograph.copyWith(
              presentationPositionVarieties: currentPresentationVarieties,
            );

            // Emitir el estado Loaded con los datos actualizados
            emit(
              Loaded(
                partograph: updatedPartograph,
                message:
                    'Elemento de la altura de la presentación modificado correctamente',
              ),
            );
          } else {
            // Si el índice no se encuentra, emitir un mensaje de error
            emit(
              Loaded(
                partograph: currentPartograph,
                message: 'Error: No se encontró el elemento para modificar.',
              ),
            );
          }
        } else {
          // Emitir estado Loaded anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo modificar el elemento.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al modificar el elemento: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(const Error('Estado inválido: no se pudo modificar el elemento.'));
    }
  }

  Future<void> _onCreateFetalHeartRate(
    CreateFetalHeartRate event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de FetalHeartRates antes de cambiar el estado
      final currentFetalHeartRates = List<FetalHeartRate>.from(
        currentPartograph.fetalHeartRates ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar crear un nuevo registro de frecuencia cardíaca fetal
        final newEntry = await _createFetalHeartRateUseCase.execute(
          partographId: event.partographId,
          value: event.value,
          time: event.time,
        );

        if (newEntry != null) {
          // Crear nueva lista con el registro añadido
          final updatedFetalHeartRates = List<FetalHeartRate>.from(
            currentFetalHeartRates,
          )..add(newEntry);

          // Crear una copia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            fetalHeartRates: updatedFetalHeartRates,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Frecuencia cardíaca fetal añadida correctamente',
            ),
          );
        } else {
          // Si no se puede crear el registro, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo añadir la frecuencia cardíaca fetal.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al añadir la frecuencia cardíaca fetal: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo añadir la frecuencia cardíaca fetal.',
        ),
      );
    }
  }

  Future<void> _onUpdateFetalHeartRate(
    UpdateFetalHeartRate event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de FetalHeartRates antes de cambiar el estado
      final currentFetalHeartRates = List<FetalHeartRate>.from(
        currentPartograph.fetalHeartRates ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar el registro de frecuencia cardíaca fetal
        final updatedEntry = await _updateFetalHeartRateUseCase.execute(
          id: event.id,
          partographId: event.partographId,
          value: event.value,
          time: event.time,
        );

        if (updatedEntry != null) {
          // Reemplazar el registro actualizado en la lista
          final index = currentFetalHeartRates
              .indexWhere((entry) => entry.id == updatedEntry.id);
          if (index != -1) {
            currentFetalHeartRates[index] = updatedEntry;

            // Crear una copia actualizada del partograma
            final updatedPartograph = currentPartograph.copyWith(
              fetalHeartRates: currentFetalHeartRates,
            );

            // Emitir el estado Loaded con los datos actualizados
            emit(
              Loaded(
                partograph: updatedPartograph,
                message: 'Frecuencia cardíaca fetal modificada correctamente',
              ),
            );
          } else {
            // Si el índice no se encuentra, emitir un mensaje de error
            emit(
              Loaded(
                partograph: currentPartograph,
                message: 'Error: No se encontró el elemento para modificar.',
              ),
            );
          }
        } else {
          // Emitir estado Loaded anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message:
                  'Error: No se pudo modificar la frecuencia cardíaca fetal.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al modificar la frecuencia cardíaca fetal: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo modificar la frecuencia cardíaca fetal.',
        ),
      );
    }
  }

  Future<void> _onCreateContractionFrequency(
    CreateContractionFrequency event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de ContractionFrequencies antes de cambiar el estado
      final currentContractionFrequencies = List<ContractionFrequency>.from(
        currentPartograph.contractionFrequencies ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar crear un nuevo registro de frecuencia de contracciones
        final newEntry = await _createContractionFrequencyUseCase.execute(
          partographId: event.partographId,
          value: event.value,
          time: event.time,
        );

        if (newEntry != null) {
          // Crear nueva lista con el registro añadido
          final updatedContractionFrequencies = List<ContractionFrequency>.from(
            currentContractionFrequencies,
          )..add(newEntry);

          // Crear una copia actualizada del partograma
          final updatedPartograph = currentPartograph.copyWith(
            contractionFrequencies: updatedContractionFrequencies,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Frecuencia de contracciones añadida correctamente',
            ),
          );
        } else {
          // Si no se pudo crear el registro, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message:
                  'Error: No se pudo añadir la frecuencia de contracciones.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al añadir la frecuencia de contracciones: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo añadir la frecuencia de contracciones.',
        ),
      );
    }
  }

  Future<void> _onUpdateContractionFrequency(
    UpdateContractionFrequency event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Extraer la lista actual de ContractionFrequencies antes de cambiar el estado
      final currentContractionFrequencies = List<ContractionFrequency>.from(
        currentPartograph.contractionFrequencies ?? [],
      );

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar el registro de frecuencia de contracciones
        final updatedEntry = await _updateContractionFrequencyUseCase.execute(
          id: event.id,
          partographId: event.partographId,
          value: event.value,
          time: event.time,
        );

        if (updatedEntry != null) {
          // Reemplazar el registro actualizado en la lista
          final index = currentContractionFrequencies
              .indexWhere((entry) => entry.id == updatedEntry.id);
          if (index != -1) {
            currentContractionFrequencies[index] = updatedEntry;

            // Crear una copia actualizada del partograma
            final updatedPartograph = currentPartograph.copyWith(
              contractionFrequencies: currentContractionFrequencies,
            );

            // Emitir el estado Loaded con los datos actualizados
            emit(
              Loaded(
                partograph: updatedPartograph,
                message: 'Frecuencia de contracciones modificada correctamente',
              ),
            );
          } else {
            // Si el índice no se encuentra, emitir un mensaje de error
            emit(
              Loaded(
                partograph: currentPartograph,
                message: 'Error: No se encontró el elemento para modificar.',
              ),
            );
          }
        } else {
          // Emitir estado Loaded anterior con mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message:
                  'Error: No se pudo modificar la frecuencia de contracciones.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message:
                'Error al modificar la frecuencia de contracciones: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo modificar la frecuencia de contracciones.',
        ),
      );
    }
  }

  Future<void> _onCreateChildbirthNote(
    CreateChildbirthNote event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar crear la nota de parto
        final newEntry = await _createChildbirthNoteUseCase.execute(
          partographId: event.partographId,
          date: event.date,
          hour: event.hour,
          sex: event.sex,
          peso: event.peso,
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

        if (newEntry != null) {
          // Crear una copia actualizada del partograma con la nueva nota de parto
          final updatedPartograph = currentPartograph.copyWith(
            childbirthNote: newEntry,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Nota de parto añadida correctamente.',
            ),
          );
        } else {
          // Si no se pudo crear la nota, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo crear la nota de parto.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al crear la nota de parto: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(const Error('Estado inválido: no se pudo crear la nota de parto.'));
    }
  }

  Future<void> _onUpdateChildbirthNote(
    UpdateChildbirthNote event,
    Emitter<PartographState> emit,
  ) async {
    if (state is Loaded) {
      final currentPartograph = (state as Loaded).partograph;

      // Emitir estado transitorio
      emit(const Loading());

      try {
        // Intentar actualizar la nota de parto
        final updatedEntry = await _updateChildbirthNoteUseCase.execute(
          partographId: event.partographId,
          date: event.date,
          hour: event.hour,
          sex: event.sex,
          peso: event.peso,
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

        if (updatedEntry != null) {
          // Crear una copia actualizada del partograma con la nota modificada
          final updatedPartograph = currentPartograph.copyWith(
            childbirthNote: updatedEntry,
          );

          // Emitir el estado Loaded con los datos actualizados
          emit(
            Loaded(
              partograph: updatedPartograph,
              message: 'Nota de parto modificada correctamente',
            ),
          );
        } else {
          // Si no se pudo actualizar la nota, regresar al estado anterior con un mensaje de error
          emit(
            Loaded(
              partograph: currentPartograph,
              message: 'Error: No se pudo modificar la nota de parto.',
            ),
          );
        }
      } catch (error) {
        // Manejar errores y regresar al estado anterior
        emit(
          Loaded(
            partograph: currentPartograph,
            message: 'Error al modificar la nota de parto: $error',
          ),
        );
      }
    } else {
      // Emitir error si no hay un partograma cargado
      emit(
        const Error(
          'Estado inválido: no se pudo modificar la nota de parto.',
        ),
      );
    }
  }

  String _intToChar(int number) {
    // Sumar 96 para obtener el código Unicode correspondiente
    return String.fromCharCode(96 + number);
  }
}
