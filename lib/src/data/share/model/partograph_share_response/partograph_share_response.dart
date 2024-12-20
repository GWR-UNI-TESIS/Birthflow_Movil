import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_share_response.g.dart';
part 'partograph_share_response.freezed.dart';

@freezed
class PartographShareResponse with _$PartographShareResponse {
  const factory PartographShareResponse({
    required int id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
    required DateTime createdAt,
    required String owner, 
  }) = _PartographShareResponse;

  factory PartographShareResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographShareResponseFromJson(json);
}
