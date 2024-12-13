// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupResponseImpl _$$GroupResponseImplFromJson(Map<String, dynamic> json) =>
    _$GroupResponseImpl(
      id: (json['id'] as num).toInt(),
      groupName: json['groupName'] as String,
      isPublic: json['isPublic'] as bool,
      isDeleted: json['isDeleted'] as bool,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      deletedAt: DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$GroupResponseImplToJson(_$GroupResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupName': instance.groupName,
      'isPublic': instance.isPublic,
      'isDeleted': instance.isDeleted,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'deletedAt': instance.deletedAt.toIso8601String(),
    };
