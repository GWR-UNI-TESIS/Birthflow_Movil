import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curve_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_curves_response.freezed.dart';
part 'alert_curves_response.g.dart';

@freezed
class AlertCurvesResponse with _$AlertCurvesResponse {
  const factory AlertCurvesResponse({
    List<AlertCurveResponse>? alertCurve,
    List<AlertCurveResponse>? newAlertCurve,
  }) = _AlertCurvesResponse;

  factory AlertCurvesResponse.fromJson(Map<String, dynamic> json) =>
      _$AlertCurvesResponseFromJson(json);
}
