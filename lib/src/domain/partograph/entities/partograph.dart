import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_state.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';

/// Representa el partograma completo.
/// 
/// Contiene la información clínica registrada durante el trabajo de parto,
/// incluyendo dilataciones cervicales, frecuencia cardíaca fetal, contracciones,
/// notas de parto, estado del partograma y curvas de alerta.
class Partograph {
  /// Identificador único del partograma.
  final String? partographId;

  /// Nombre principal asociado al partograma (ejemplo: nombre de la paciente).
  final String name;

  /// Nombre del registro vinculado al partograma.
  final String recordName;

  /// Fecha de creación o inicio del partograma.
  final DateTime date;

  /// Observaciones generales sobre el partograma.
  final String observation;

  /// Tiempo de trabajo de parto registrado (ejemplo: en horas).
  final String workTime;

  /// Registros de dilatación cervical.
  final List<CervicalDilation>? cervicalDilations;

  /// Registros de la tabla de vigilancia médica.
  final List<MedicalSurveillanceTable>? medicalSurveillanceTable;

  /// Registros de la posición y variedad de la presentación fetal.
  final List<PresentationPositionVariety>? presentationPositionVarieties;

  /// Registros de frecuencia cardíaca fetal.
  final List<FetalHeartRate>? fetalHeartRates;

  /// Registros de la frecuencia de contracciones.
  final List<ContractionFrequency>? contractionFrequencies;

  /// Nota de parto asociada al partograma.
  final ChildbirthNote? childbirthNote;

  /// Estado actual del partograma.
  final PartographState? partographState;

  /// Curvas de alerta vinculadas al partograma.
  final AlertCurves? curves;

  /// Constructor de la clase [Partograph].
  Partograph({
    this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    required this.workTime,
    this.cervicalDilations,
    this.medicalSurveillanceTable,
    this.presentationPositionVarieties,
    this.fetalHeartRates,
    this.contractionFrequencies,
    this.childbirthNote,
    this.partographState,
    this.curves,
  });

  /// Crea una copia de este [Partograph] permitiendo modificar
  /// únicamente algunas propiedades sin alterar las demás.
  Partograph copyWith({
    String? partographId,
    String? name,
    String? recordName,
    DateTime? date,
    String? observation,
    String? workTime,
    List<CervicalDilation>? cervicalDilations,
    List<MedicalSurveillanceTable>? medicalSurveillanceTable,
    List<PresentationPositionVariety>? presentationPositionVarieties,
    List<FetalHeartRate>? fetalHeartRates,
    List<ContractionFrequency>? contractionFrequencies,
    ChildbirthNote? childbirthNote,
    AlertCurves? curves,
  }) {
    return Partograph(
      partographId: partographId ?? this.partographId,
      name: name ?? this.name,
      recordName: recordName ?? this.recordName,
      date: date ?? this.date,
      observation: observation ?? this.observation,
      workTime: workTime ?? this.workTime,
      cervicalDilations: cervicalDilations ?? this.cervicalDilations,
      medicalSurveillanceTable:
          medicalSurveillanceTable ?? this.medicalSurveillanceTable,
      presentationPositionVarieties:
          presentationPositionVarieties ?? this.presentationPositionVarieties,
      fetalHeartRates: fetalHeartRates ?? this.fetalHeartRates,
      contractionFrequencies:
          contractionFrequencies ?? this.contractionFrequencies,
      childbirthNote: childbirthNote ?? this.childbirthNote,
      partographState: partographState ?? this.partographState,
      curves: curves ?? this.curves,
    );
  }
}
