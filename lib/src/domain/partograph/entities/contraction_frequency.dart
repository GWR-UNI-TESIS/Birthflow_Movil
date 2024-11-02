class ContractionFrequency {
  final int? id;
  final String partographId;
  final String value;
  final DateTime time;
  final DateTime createAt;
  final DateTime? updateAt;
  final DateTime? deleteAt;
  final String? createdBy;
  final String? updateBy;
  final String? deleteBy;

  ContractionFrequency({
    this.id,
    required this.partographId,
    required this.value,
    required this.time,
    required this.createAt,
    this.updateAt,
    this.deleteAt,
    this.createdBy,
    this.updateBy,
    this.deleteBy,
  });
}
