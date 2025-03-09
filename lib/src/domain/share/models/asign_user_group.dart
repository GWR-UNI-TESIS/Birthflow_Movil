import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';

class AsignUserGroup {
  final String partographId;
  final int permissionTypeId;
  final List<SearchUserGroup>? searchUserGroupDtos;

  AsignUserGroup({
    required this.partographId,
    required this.permissionTypeId,
    required this.searchUserGroupDtos,
  });
}
