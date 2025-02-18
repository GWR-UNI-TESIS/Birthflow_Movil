class PartographAuditLog {
  final int id;
  final String partographId;
  final String entityName;
  final String fieldName;
  final String oldValue;
  final String newValue;
  final DateTime changedAt;
  final String changedBy;
  final int partographVersionId;

  PartographAuditLog({
    required this.id,
    required this.partographId,
    required this.entityName,
    required this.fieldName,
    required this.oldValue,
    required this.newValue,
    required this.changedAt,
    required this.changedBy,
    required this.partographVersionId,
  });
}
