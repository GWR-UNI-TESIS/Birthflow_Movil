import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetal_heart_rate_response.freezed.dart';
part 'fetal_heart_rate_response.g.dart';

@freezed
class FetalHeartRateResponse with _$FetalHeartRateResponse {
  const factory FetalHeartRateResponse({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
    required bool isDelete,
    required DateTime createAt,
    DateTime? updateAt,
    DateTime? deleteAt,
    String? createdBy,
    String? updateBy,
    String? deleteBy,
  }) = _FetalHeartRateResponse;

  factory FetalHeartRateResponse.fromJson(Map<String, dynamic> json) =>
      _$FetalHeartRateResponseFromJson(json);
}
