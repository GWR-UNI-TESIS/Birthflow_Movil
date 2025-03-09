import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_state_response.freezed.dart';
part 'partograph_state_response.g.dart';

@freezed
class PartographStateResponse with _$PartographStateResponse {
  const factory PartographStateResponse({
    int? id,
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
    DateTime? lastViewDate,
  }) = _PartographStateResponse;

  factory PartographStateResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographStateResponseFromJson(json);
}
