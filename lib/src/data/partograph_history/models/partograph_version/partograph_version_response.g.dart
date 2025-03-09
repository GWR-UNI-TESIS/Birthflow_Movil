// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_version_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographVersionResponseImpl _$$PartographVersionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographVersionResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      changedAt: DateTime.parse(json['changedAt'] as String),
      changedByName: json['changedByName'] as String?,
      partographDataJson: json['partographDataJson'] as String,
      auditLogs: (json['auditLogs'] as List<dynamic>?)
          ?.map((e) =>
              PartographAuditLogResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PartographVersionResponseImplToJson(
        _$PartographVersionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'changedAt': instance.changedAt.toIso8601String(),
      'changedByName': instance.changedByName,
      'partographDataJson': instance.partographDataJson,
      'auditLogs': instance.auditLogs?.map((e) => e.toJson()).toList(),
    };
