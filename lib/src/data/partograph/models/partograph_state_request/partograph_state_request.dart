  import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_state_request.freezed.dart';
part 'partograph_state_request.g.dart';

@freezed
class PartographStateRequest with _$PartographStateRequest {
  const factory PartographStateRequest({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  }) = _PartographStateRequest;

  factory PartographStateRequest.fromJson(Map<String, dynamic> json) => _$PartographStateRequestFromJson(json);
}
