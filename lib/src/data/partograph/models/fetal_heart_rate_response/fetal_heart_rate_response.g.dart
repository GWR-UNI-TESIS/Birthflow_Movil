// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetal_heart_rate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetalHeartRateResponseImpl _$$FetalHeartRateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetalHeartRateResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      value: json['value'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$FetalHeartRateResponseImplToJson(
        _$FetalHeartRateResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
    };
