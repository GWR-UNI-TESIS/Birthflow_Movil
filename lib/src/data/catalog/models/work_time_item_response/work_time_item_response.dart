import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_time_item_response.freezed.dart';
part 'work_time_item_response.g.dart';

@freezed
class WorkTimeItemResponse with _$WorkTimeItemResponse {
  const factory WorkTimeItemResponse({
    required int id,
    required String workTimeId,
    required double cervicalDilation,
    required String time, // Time can be handled as String here; parse as needed
  }) = _WorkTimeItemResponse;

  factory WorkTimeItemResponse.fromJson(Map<String, dynamic> json) => _$WorkTimeItemResponseFromJson(json);
}
