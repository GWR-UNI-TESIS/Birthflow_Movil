import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group_request.freezed.dart';
part 'user_group_request.g.dart';

@freezed
class UserGroupRequest with _$UserGroupRequest {
  const factory UserGroupRequest({
    required String userId,
    required int groupId,
  }) = _UserGroupRequest;

  factory UserGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$UserGroupRequestFromJson(json);
}
