class Partograph {
  final String? partographId;
  final String name;
  final String recordName;
  final DateTime date;
  final String observation;
  final bool isDelete;
  final DateTime createdAt;
  final String createdBy;
  final DateTime? deletedAt;
  final String? deletedBy;

  Partograph({
    this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    required this.isDelete,
    required this.createdAt,
    required this.createdBy,
    this.deletedAt,
    this.deletedBy,
  });
}
