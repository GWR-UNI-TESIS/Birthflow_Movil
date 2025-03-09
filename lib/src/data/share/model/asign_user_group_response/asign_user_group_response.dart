import 'package:birthflow_movil/src/data/share/model/search_user_group_response/search_user_group_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asign_user_group_response.freezed.dart';
part 'asign_user_group_response.g.dart';

@freezed
class AsignUserGroupResponse with _$AsignUserGroupResponse {
  const factory AsignUserGroupResponse({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroupResponse>? searchUserGroupDtos,
  }) = _AsignUserGroupResponse;

  factory AsignUserGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$AsignUserGroupResponseFromJson(json);
}
