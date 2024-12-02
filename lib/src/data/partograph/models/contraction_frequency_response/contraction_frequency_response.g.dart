// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contraction_frequency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractionFrequencyResponseImpl _$$ContractionFrequencyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractionFrequencyResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      value: json['value'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$ContractionFrequencyResponseImplToJson(
        _$ContractionFrequencyResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
    };
