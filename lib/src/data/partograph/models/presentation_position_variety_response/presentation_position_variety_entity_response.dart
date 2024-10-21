import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_position_variety_entity_response.freezed.dart';
part 'presentation_position_variety_entity_response.g.dart';

@freezed
class PresentationPositionVarietyEntityResponse
    with _$PresentationPositionVarietyEntityResponse {
  const factory PresentationPositionVarietyEntityResponse({
    required int id,
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
    required bool isDelete,
    required DateTime createAt,
    DateTime? updateAt,
    DateTime? deleteAt,
    required String createdBy,
    String? updateBy,
    String? deleteBy,
  }) = _PresentationPositionVarietyEntityResponse;

  factory PresentationPositionVarietyEntityResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PresentationPositionVarietyEntityResponseFromJson(json);
}
