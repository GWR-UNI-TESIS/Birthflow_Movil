import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_position_variety_entity_response.freezed.dart';
part 'presentation_position_variety_entity_response.g.dart';

@freezed
class PresentationPositionVarietyEntityResponse
    with _$PresentationPositionVarietyEntityResponse {
  const factory PresentationPositionVarietyEntityResponse({
    int? id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) = _PresentationPositionVarietyEntityResponse;

  factory PresentationPositionVarietyEntityResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PresentationPositionVarietyEntityResponseFromJson(json);
}
