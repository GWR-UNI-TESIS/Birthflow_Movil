// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_time_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkTimeItemResponseImpl _$$WorkTimeItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkTimeItemResponseImpl(
      id: (json['id'] as num).toInt(),
      workTimeId: json['workTimeId'] as String,
      cervicalDilation: (json['cervicalDilation'] as num).toDouble(),
      time: json['time'] as String,
    );

Map<String, dynamic> _$$WorkTimeItemResponseImplToJson(
        _$WorkTimeItemResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workTimeId': instance.workTimeId,
      'cervicalDilation': instance.cervicalDilation,
      'time': instance.time,
    };
