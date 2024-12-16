
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';

class CervicalDilationEditData {
  final CervicalDilation? cervicalDilation;
  final String partographId;

  CervicalDilationEditData({
    required this.cervicalDilation,
    required this.partographId,
  });
}

class FetalHeartRateEditData {
  final FetalHeartRate? fetalHeartRate;
  final String partographId;

  FetalHeartRateEditData({
    required this.fetalHeartRate,
    required this.partographId,
  });
}

class ContractionFrequencyEditData {
  final ContractionFrequency? contractionFrequency;
  final String partographId;

  ContractionFrequencyEditData({
    required this.contractionFrequency,
    required this.partographId,
  });
}

class MedicalSurveillanceEditData {
  final MedicalSurveillanceTable? medicalSurveillanceTable;
  final String partographId;

  MedicalSurveillanceEditData({
    required this.medicalSurveillanceTable,
    required this.partographId,
  });
}

class PresentationPositionVarietyData {
  final PresentationPositionVariety? presentationPositionVariety;
  final String partographId;

  PresentationPositionVarietyData({
    required this.presentationPositionVariety,
    required this.partographId,
  });
}
