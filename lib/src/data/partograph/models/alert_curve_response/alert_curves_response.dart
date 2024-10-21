import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_curves_response.freezed.dart';
part 'alert_curves_response.g.dart';

@freezed
class AlertCurvesResponse with _$AlertCurvesResponse {
  const factory AlertCurvesResponse({
    List<AlertCurvesResponse>? alertCurve,
    List<AlertCurvesResponse>? newAlertCurve,
  }) = _AlertCurvesResponse;

  factory AlertCurvesResponse.fromJson(Map<String, dynamic> json) =>
      _$AlertCurvesResponseFromJson(json);
}
