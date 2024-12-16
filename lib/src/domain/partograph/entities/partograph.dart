import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';

class Partograph {
  final String? partographId;
  final String name;
  final String recordName;
  final DateTime date;
  final String observation;
  final String workTime;
  final List<CervicalDilation>? cervicalDilations;
  final List<MedicalSurveillanceTable>? medicalSurveillanceTable;
  final List<PresentationPositionVariety>? presentationPositionVarieties;
  final List<FetalHeartRate>? fetalHeartRates;
  final List<ContractionFrequency>? contractionFrequencies;
  final ChildbirthNote? childbirthNote;
  final AlertCurves? curves;

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
    this.curves,
  });

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
      curves: curves ?? this.curves,
    );
  }
}
