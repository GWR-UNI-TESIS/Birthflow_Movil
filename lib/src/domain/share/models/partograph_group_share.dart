class PartographGroupShare {
  final int id;
  final int partographGroupId;
  final String? userId;
  final int? groupId;
  final int? permissionTypeId;
  final DateTime createdAt;

  PartographGroupShare({
    required this.id,
    required this.partographGroupId,
    required this.userId,
    required this.groupId,
    required this.permissionTypeId,
    required this.createdAt,
  });
}
