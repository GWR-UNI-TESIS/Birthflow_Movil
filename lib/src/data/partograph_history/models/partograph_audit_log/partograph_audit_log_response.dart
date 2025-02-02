import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_audit_log_response.freezed.dart';
part 'partograph_audit_log_response.g.dart';

@freezed
class PartographAuditLogResponse with _$PartographAuditLogResponse {
  const factory PartographAuditLogResponse({
    required int id,
    required String partographId,
    required String entityName,
    required String fieldName,
    required String oldValue,
    required String newValue,
    required DateTime changedAt,
    required String changedBy,
    required int partographVersionId,
  }) = _PartographAuditLogResponse;

  factory PartographAuditLogResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographAuditLogResponseFromJson(json);
}
