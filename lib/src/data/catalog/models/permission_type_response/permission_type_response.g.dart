// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionTypeResponseImpl _$$PermissionTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionTypeResponseImpl(
      id: (json['id'] as num).toInt(),
      identificator: json['identificator'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$PermissionTypeResponseImplToJson(
        _$PermissionTypeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identificator': instance.identificator,
      'name': instance.name,
      'description': instance.description,
      'createAt': instance.createAt.toIso8601String(),
    };
