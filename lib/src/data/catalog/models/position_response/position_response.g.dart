// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionResponseImpl _$$PositionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PositionResponseImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PositionResponseImplToJson(
        _$PositionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
    };
