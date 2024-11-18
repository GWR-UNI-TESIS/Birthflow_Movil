import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_position_variety_entity_request.freezed.dart';
part 'presentation_position_variety_entity_request.g.dart';

@freezed
class PresentationPositionVarietyEntityRequest
    with _$PresentationPositionVarietyEntityRequest {
  const factory PresentationPositionVarietyEntityRequest({
    int? id,
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
  }) = _PresentationPositionVarietyEntityRequest;

  factory PresentationPositionVarietyEntityRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PresentationPositionVarietyEntityRequestFromJson(json);
}
