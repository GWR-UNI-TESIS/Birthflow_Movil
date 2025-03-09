class Group {
  final int id;
  final String groupName;
  final bool isPublic;
  final bool isDeleted;
  final String createdBy;
  final DateTime createdAt;
  final DateTime deletedAt;

  Group({
    required this.id,
    required this.groupName,
    required this.isPublic,
    required this.isDeleted,
    required this.createdBy,
    required this.createdAt,
    required this.deletedAt,
  });
}
