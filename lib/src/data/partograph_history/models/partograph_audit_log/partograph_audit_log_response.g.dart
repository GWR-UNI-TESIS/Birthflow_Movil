// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_audit_log_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographAuditLogResponseImpl _$$PartographAuditLogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographAuditLogResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      entityName: json['entityName'] as String,
      fieldName: json['fieldName'] as String,
      oldValue: json['oldValue'] as String,
      newValue: json['newValue'] as String,
      changedAt: DateTime.parse(json['changedAt'] as String),
      changedBy: json['changedBy'] as String,
      partographVersionId: (json['partographVersionId'] as num).toInt(),
    );

Map<String, dynamic> _$$PartographAuditLogResponseImplToJson(
        _$PartographAuditLogResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'entityName': instance.entityName,
      'fieldName': instance.fieldName,
      'oldValue': instance.oldValue,
      'newValue': instance.newValue,
      'changedAt': instance.changedAt.toIso8601String(),
      'changedBy': instance.changedBy,
      'partographVersionId': instance.partographVersionId,
    };
