class PartographShare {
  final int id;
  final String partographId;
  final String userId;
  final int groupId;
  final int permissionTypeId;
  final DateTime createdAt;
  final String owner;

  PartographShare({
    required this.id,
    required this.partographId,
    required this.userId,
    required this.groupId,
    required this.permissionTypeId,
    required this.createdAt,
    required this.owner,
  });
}
