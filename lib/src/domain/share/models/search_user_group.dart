class SearchUserGroup {
  final String name;
  final String? userId;
  final int? groupId;
  final String type;

  SearchUserGroup({
    required this.name,
    this.userId,
    this.groupId,
    required this.type,
  });
}
