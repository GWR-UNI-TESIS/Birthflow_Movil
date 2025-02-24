import 'package:birthflow_movil/src/data/partograph_history/models/partograph_audit_log/partograph_audit_log_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_version_response.freezed.dart';
part 'partograph_version_response.g.dart';

@freezed
class PartographVersionResponse  with _$PartographVersionResponse  {
  const factory PartographVersionResponse ({
    required int id,
    required String partographId,
    required DateTime changedAt,
     String? changedByName,
    required String partographDataJson,
    List<PartographAuditLogResponse>? auditLogs,

  }) = _PartographVersionResponse;

  factory PartographVersionResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographVersionResponseFromJson(json);
}
