import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetal_heart_rate_request.freezed.dart';
part 'fetal_heart_rate_request.g.dart';

@freezed
class FetalHeartRateRequest with _$FetalHeartRateRequest {
  const factory FetalHeartRateRequest({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) = _FetalHeartRateRequest;

  factory FetalHeartRateRequest.fromJson(Map<String, dynamic> json) =>
      _$FetalHeartRateRequestFromJson(json);
}
