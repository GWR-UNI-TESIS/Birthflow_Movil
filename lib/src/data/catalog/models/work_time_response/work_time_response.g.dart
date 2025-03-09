// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkTimeResponseImpl _$$WorkTimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkTimeResponseImpl(
      id: json['id'] as String,
      paridad: json['paridad'] as String,
      posicion: json['posicion'] as String,
      membrana: json['membrana'] as String,
      workTimeItems: (json['workTimeItems'] as List<dynamic>)
          .map((e) => WorkTimeItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WorkTimeResponseImplToJson(
        _$WorkTimeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paridad': instance.paridad,
      'posicion': instance.posicion,
      'membrana': instance.membrana,
      'workTimeItems': instance.workTimeItems.map((e) => e.toJson()).toList(),
    };
