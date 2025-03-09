// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contraction_frequency_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractionFrequencyRequestImpl _$$ContractionFrequencyRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractionFrequencyRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      partographId: json['partographId'] as String,
      value: json['value'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$ContractionFrequencyRequestImplToJson(
        _$ContractionFrequencyRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
    };
