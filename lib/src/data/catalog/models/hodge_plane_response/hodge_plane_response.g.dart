// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hodge_plane_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HodgePlaneResponseImpl _$$HodgePlaneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HodgePlaneResponseImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      description: json['description'] as String,
      chartPosition: (json['chartPosition'] as num).toDouble(),
    );

Map<String, dynamic> _$$HodgePlaneResponseImplToJson(
        _$HodgePlaneResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'chartPosition': instance.chartPosition,
    };
