import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
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
  });
}
