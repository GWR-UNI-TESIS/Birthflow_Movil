class CervicalDilation {
  final int id;
  final String partographId;
  final double value;
  final DateTime hour;
  final bool remOrRam;
  final bool isDelete;
  final DateTime createAt;
  final DateTime? updateAt;
  final DateTime? deleteAt;
  final String createdBy;
  final String? updateBy;
  final String? deleteBy;

  CervicalDilation({
    required this.id,
    required this.partographId,
    required this.value,
    required this.hour,
    required this.remOrRam,
    required this.isDelete,
    required this.createAt,
    required this.updateAt,
    required this.deleteAt,
    required this.createdBy,
    required this.updateBy,
    required this.deleteBy,
  });
}
