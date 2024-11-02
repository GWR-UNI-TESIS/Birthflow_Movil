import 'package:birthflow_movil/src/data/catalog/models/work_time_item_response/work_time_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_time_response.freezed.dart';
part 'work_time_response.g.dart';

@freezed
class WorkTimeResponse with _$WorkTimeResponse {
  const factory WorkTimeResponse({
    required String id,
    required String paridad,
    required String posicion,
    required String membrana,
    required List<WorkTimeItemResponse> workTimeItems,
  }) = _WorkTimeResponse;

  factory WorkTimeResponse.fromJson(Map<String, dynamic> json) => _$WorkTimeResponseFromJson(json);
}
