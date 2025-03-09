import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cervical_dilation_response.freezed.dart';
part 'cervical_dilation_response.g.dart';

@freezed
class CervicalDilationResponse with _$CervicalDilationResponse {
  const factory CervicalDilationResponse({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    AlertCurvesResponse? curves,
  }) = _CervicalDilationResponse;

  factory CervicalDilationResponse.fromJson(Map<String, dynamic> json) =>
      _$CervicalDilationResponseFromJson(json);
}
