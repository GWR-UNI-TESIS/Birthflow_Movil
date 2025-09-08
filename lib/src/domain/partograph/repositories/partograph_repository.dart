import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_state.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';

/// Contrato del repositorio de partograma: CRUD y consultas de todos los submódulos.
abstract class PartographRepository {
  /// Lista partogramas visibles del usuario.
  Future<List<PartographList>?> getPartographs({required String userId});

  /// Obtiene un partograma por id (detalle completo).
  Future<Partograph> getPartograph({required String partographId});

  /// Crea un partograma.
  Future<Partograph?> createPartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });

  /// Actualiza datos básicos del partograma.
  Future<Partograph?> updatePartograph({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });

  /// Elimina (o marca como eliminado) un partograma.
  Future<Partograph> deletePartograph({
    required String partographId,
  });

  /// Búsqueda de partogramas por criterios (nombre/filtros/actividad/horas).
  Future<List<PartographList>?> searchPartographs({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  });

  // --- Dilatación cervical ---

  /// Lista registros de dilatación cervical del partograma.
  Future<List<CervicalDilation>?> getCervicalDilation({
    required String partographId,
  });

  /// Crea un registro de dilatación cervical.
  Future<CervicalDilation?> createCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });

  /// Actualiza un registro de dilatación cervical.
  Future<CervicalDilation?> updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });

  /// Elimina un registro de dilatación cervical.
  Future<CervicalDilation?> deleteCervicalDilation({
    required int id,
  });

  // --- Vigilancia médica (tabla) ---

  /// Lista filas de vigilancia médica.
  Future<List<MedicalSurveillanceTable>?> getMedicalSurveillance({
    required String partographId,
  });

  /// Crea una fila de vigilancia médica.
  Future<MedicalSurveillanceTable?> createMedicalSurveillance({
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  });

  /// Actualiza una fila de vigilancia médica.
  Future<MedicalSurveillanceTable?> updateMedicalSurveillance({
    required int id,
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  });

  /// Elimina una fila de vigilancia médica.
  Future<MedicalSurveillanceTable?> deleteMedicalSurveillance({
    required int id,
  });

  // --- Plano de Hodge / presentación-posicion-variedad ---

  /// Lista registros de presentación/posición/variedad.
  Future<List<PresentationPositionVariety>?> getPresentationPositionVariety({
    required String partographId,
  });

  /// Crea un registro de presentación/posición/variedad.
  Future<PresentationPositionVariety?> createPresentationPositionVariety({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  });

  /// Actualiza un registro de presentación/posición/variedad.
  Future<PresentationPositionVariety?> updatePresentationPositionVariety({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  });

  /// Elimina un registro de presentación/posición/variedad.
  Future<PresentationPositionVariety?> deletePresentationPositionVariety({
    required int id,
  });

  // --- FCF (frecuencia cardiaca fetal) ---

  /// Lista registros de FCF.
  Future<List<FetalHeartRate>?> getFetalHeartRate({
    required String partographId,
  });

  /// Crea un registro de FCF.
  Future<FetalHeartRate?> createFetalHeartRate({
    required String partographId,
    required String value,
    required DateTime time,
  });

  /// Actualiza un registro de FCF.
  Future<FetalHeartRate?> updateFetalHeartRate({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });

  /// Elimina un registro de FCF.
  Future<FetalHeartRate?> deleteFetalHeartRate({
    required int id,
  });

  // --- Frecuencia de contracciones ---

  /// Lista registros de frecuencia de contracciones.
  Future<List<ContractionFrequency>?> getContractionFrequency({
    required String partographId,
  });

  /// Crea un registro de frecuencia de contracciones.
  Future<ContractionFrequency?> createContractionFrequency({
    required String partographId,
    required String value,
    required DateTime time,
  });

  /// Actualiza un registro de frecuencia de contracciones.
  Future<ContractionFrequency?> updateContractionFrequency({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });

  /// Elimina un registro de frecuencia de contracciones.
  Future<ContractionFrequency?> deleteContractionFrequency({
    required int id,
  });

  // --- Estado del partograma ---

  /// Actualiza flags de estado (archivado, silenciado, favorito, etc.).
  Future<PartographState?> updatePartographState({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  });

  // --- Curvas (alerta/acción reales/teóricas) ---

  /// Obtiene curvas de referencia/alerta asociadas.
  Future<AlertCurves?> getCurves({
    required String partographId,
  });

  // --- Nota de parto ---

  /// Crea la nota de parto asociada al partograma.
  Future<ChildbirthNote?> createChildbirthNote({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
    required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  });

  /// Actualiza la nota de parto.
  Future<ChildbirthNote?> updateChildbirthNote({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
    required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  });
}
