import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_curve_response.freezed.dart';
part 'alert_curve_response.g.dart';

@freezed
class AlertCurveResponse with _$AlertCurveResponse {
  const factory AlertCurveResponse({
    required double cervicalDilation,
    required DateTime time,
  }) = _AlertCurveResponse;

  factory AlertCurveResponse.fromJson(Map<String, dynamic> json) =>
      _$AlertCurveResponseFromJson(json);
}
