import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_response.freezed.dart';
part 'partograph_group_response.g.dart';

@freezed
class PartographGroupResponse with _$PartographGroupResponse {
  const factory PartographGroupResponse({
    required int id,
    required String name,
    required String description,
    required String createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isDeleted,
    required DateTime deletedAt,
  }) = _PartographGroupResponse;

  factory PartographGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupResponseFromJson(json);
}
