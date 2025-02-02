import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_audit_log/partograph_audit_log.dart';

class PartographVersion {
  final int id;
  final String partographId;
  final DateTime changedAt;
  final String changedBy;
  final Map<String, dynamic> partographDataJson; // Este campo es un Map
  final List<PartographAuditLog>? auditLogs;

  PartographVersion({
    required this.id,
    required this.partographId,
    required this.changedAt,
    required this.changedBy,
    required this.partographDataJson,
    this.auditLogs,
  });
}
