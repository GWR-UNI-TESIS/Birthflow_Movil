// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupResponseImpl _$$PartographGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupResponseImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      isDeleted: json['isDeleted'] as bool,
      deletedAt: DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$$PartographGroupResponseImplToJson(
        _$PartographGroupResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'deletedAt': instance.deletedAt.toIso8601String(),
    };
