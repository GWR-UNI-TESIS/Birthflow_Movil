// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupRequestImpl _$$GroupRequestImplFromJson(Map<String, dynamic> json) =>
    _$GroupRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      groupName: json['groupName'] as String,
    );

Map<String, dynamic> _$$GroupRequestImplToJson(_$GroupRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupName': instance.groupName,
    };
