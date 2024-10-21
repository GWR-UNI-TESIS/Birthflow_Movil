import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_response/contraction_frequency_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_response/fetal_heart_rate_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_state_response/partograph_state_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_response.freezed.dart';
part 'partograph_response.g.dart';

@freezed
class PartographResponse with _$PartographResponse {
  const factory PartographResponse({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String workTime,
    List<CervicalDilationResponse>? cervicalDilationResponse,
    List<MedicalSurveillanceTableResponse>? medicalSurveillanceTableResponse,
    List<PresentationPositionVarietyEntityResponse>?
        presentationPositionVarietyEntityResponse,
    List<FetalHeartRateResponse>? fetalHeartRateResponse,
    List<ContractionFrequencyResponse>? contractionFrequenceResponse,
    PartographStateResponse? partographStateResponse,
    AlertCurvesResponse? alertCurvesResponse,
  }) = _PartographResponse;

  factory PartographResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographResponseFromJson(json);
}
