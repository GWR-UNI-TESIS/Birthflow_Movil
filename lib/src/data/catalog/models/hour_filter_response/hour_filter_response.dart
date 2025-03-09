import 'package:freezed_annotation/freezed_annotation.dart';

part 'hour_filter_response.freezed.dart';
part 'hour_filter_response.g.dart';

@freezed
class HourFilterResponse with _$HourFilterResponse {
  const factory HourFilterResponse({
    required int id,
    required String description,
  }) = _HourFilterResponse;

  factory HourFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$HourFilterResponseFromJson(json);
}
