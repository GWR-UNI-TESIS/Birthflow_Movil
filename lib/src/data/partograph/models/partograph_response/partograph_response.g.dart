// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographResponseImpl _$$PartographResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographResponseImpl(
      partographId: json['partographId'] as String,
      name: json['name'] as String,
      recordName: json['recordName'] as String,
      date: DateTime.parse(json['date'] as String),
      observation: json['observation'] as String,
      workTime: json['workTime'] as String,
      cervicalDilationResponse:
          (json['cervicalDilationResponse'] as List<dynamic>?)
              ?.map((e) =>
                  CervicalDilationResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
      medicalSurveillanceTableResponse:
          (json['medicalSurveillanceTableResponse'] as List<dynamic>?)
              ?.map((e) => MedicalSurveillanceTableResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      presentationPositionVarietyEntityResponse:
          (json['presentationPositionVarietyEntityResponse'] as List<dynamic>?)
              ?.map((e) => PresentationPositionVarietyEntityResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      fetalHeartRateResponse: (json['fetalHeartRateResponse'] as List<dynamic>?)
          ?.map(
              (e) => FetalHeartRateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      contractionFrequenceResponse: (json['contractionFrequenceResponse']
              as List<dynamic>?)
          ?.map((e) =>
              ContractionFrequencyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      partographStateResponse: json['partographStateResponse'] == null
          ? null
          : PartographStateResponse.fromJson(
              json['partographStateResponse'] as Map<String, dynamic>),
      alertCurvesResponse: json['alertCurvesResponse'] == null
          ? null
          : AlertCurvesResponse.fromJson(
              json['alertCurvesResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PartographResponseImplToJson(
        _$PartographResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'name': instance.name,
      'recordName': instance.recordName,
      'date': instance.date.toIso8601String(),
      'observation': instance.observation,
      'workTime': instance.workTime,
      'cervicalDilationResponse':
          instance.cervicalDilationResponse?.map((e) => e.toJson()).toList(),
      'medicalSurveillanceTableResponse': instance
          .medicalSurveillanceTableResponse
          ?.map((e) => e.toJson())
          .toList(),
      'presentationPositionVarietyEntityResponse': instance
          .presentationPositionVarietyEntityResponse
          ?.map((e) => e.toJson())
          .toList(),
      'fetalHeartRateResponse':
          instance.fetalHeartRateResponse?.map((e) => e.toJson()).toList(),
      'contractionFrequenceResponse': instance.contractionFrequenceResponse
          ?.map((e) => e.toJson())
          .toList(),
      'partographStateResponse': instance.partographStateResponse?.toJson(),
      'alertCurvesResponse': instance.alertCurvesResponse?.toJson(),
    };
