class PartographGroup {
  final int id;
  final String name;
  final String description;
  final String createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isDeleted;
  final DateTime deletedAt;

  PartographGroup({
    required this.id,
    required this.name,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.deletedAt,
  });
}
