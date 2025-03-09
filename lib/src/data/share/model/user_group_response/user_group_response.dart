import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_response.freezed.dart';
part 'user_group_response.g.dart';

@freezed
class UserGroupResponse with _$UserGroupResponse {
  const factory UserGroupResponse({
    required String userId,
    required int groupId,
  }) = _UserGroupResponse;

  factory UserGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$UserGroupResponseFromJson(json);
}
