// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_surveillance_table_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MedicalSurveillanceTableResponseImpl
    _$$MedicalSurveillanceTableResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$MedicalSurveillanceTableResponseImpl(
          id: (json['id'] as num).toInt(),
          partographId: json['partographId'] as String,
          letter: json['letter'] as String,
          maternalPosition: json['maternalPosition'] as String,
          arterialPressure: json['arterialPressure'] as String,
          maternalPulse: json['maternalPulse'] as String,
          fetalHeartRate: json['fetalHeartRate'] as String,
          contractionsDuration: json['contractionsDuration'] as String,
          frequencyContractions: json['frequencyContractions'] as String,
          pain: json['pain'] as String,
          time: DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$$MedicalSurveillanceTableResponseImplToJson(
        _$MedicalSurveillanceTableResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'letter': instance.letter,
      'maternalPosition': instance.maternalPosition,
      'arterialPressure': instance.arterialPressure,
      'maternalPulse': instance.maternalPulse,
      'fetalHeartRate': instance.fetalHeartRate,
      'contractionsDuration': instance.contractionsDuration,
      'frequencyContractions': instance.frequencyContractions,
      'pain': instance.pain,
      'time': instance.time.toIso8601String(),
    };
