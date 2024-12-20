// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupRequestImpl _$$PartographGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PartographGroupRequestImplToJson(
        _$PartographGroupRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
