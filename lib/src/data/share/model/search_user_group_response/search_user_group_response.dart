import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_group_response.freezed.dart';
part 'search_user_group_response.g.dart';

@freezed
class SearchUserGroupResponse with _$SearchUserGroupResponse {
  const factory SearchUserGroupResponse({
    required String name,
    required String? userId,
    required int? groupId,
    required String type,
  }) = _SearchUserGroupResponse;

  factory SearchUserGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUserGroupResponseFromJson(json);
}
