// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetal_heart_rate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetalHeartRateRequestImpl _$$FetalHeartRateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FetalHeartRateRequestImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      value: json['value'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$FetalHeartRateRequestImplToJson(
        _$FetalHeartRateRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
    };
