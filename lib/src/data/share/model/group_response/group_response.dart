import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_response.freezed.dart';
part 'group_response.g.dart';

@freezed
class GroupResponse with _$GroupResponse {
  const factory GroupResponse({
    required int id,
    required String groupName,
    required bool isPublic,
    required bool isDeleted,
    required String createdBy,
    required DateTime createdAt,
    required DateTime deletedAt,
  }) = _GroupResponse;

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);
}
