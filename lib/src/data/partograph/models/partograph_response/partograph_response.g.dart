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
      cervicalDilations: (json['cervicalDilations'] as List<dynamic>?)
          ?.map((e) =>
              CervicalDilationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicalSurveillanceTable:
          (json['medicalSurveillanceTable'] as List<dynamic>?)
              ?.map((e) => MedicalSurveillanceTableResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      presentationPositionVarieties:
          (json['presentationPositionVarieties'] as List<dynamic>?)
              ?.map((e) => PresentationPositionVarietyEntityResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      fetalHeartRates: (json['fetalHeartRates'] as List<dynamic>?)
          ?.map(
              (e) => FetalHeartRateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      contractionFrequencies: (json['contractionFrequencies'] as List<dynamic>?)
          ?.map((e) =>
              ContractionFrequencyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      partographState: json['partographState'] == null
          ? null
          : PartographStateResponse.fromJson(
              json['partographState'] as Map<String, dynamic>),
      childbirthNote: json['childbirthNote'] == null
          ? null
          : ChildbirthNoteResponse.fromJson(
              json['childbirthNote'] as Map<String, dynamic>),
      curves: json['curves'] == null
          ? null
          : AlertCurvesResponse.fromJson(
              json['curves'] as Map<String, dynamic>),
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
      'cervicalDilations':
          instance.cervicalDilations?.map((e) => e.toJson()).toList(),
      'medicalSurveillanceTable':
          instance.medicalSurveillanceTable?.map((e) => e.toJson()).toList(),
      'presentationPositionVarieties': instance.presentationPositionVarieties
          ?.map((e) => e.toJson())
          .toList(),
      'fetalHeartRates':
          instance.fetalHeartRates?.map((e) => e.toJson()).toList(),
      'contractionFrequencies':
          instance.contractionFrequencies?.map((e) => e.toJson()).toList(),
      'partographState': instance.partographState?.toJson(),
      'childbirthNote': instance.childbirthNote?.toJson(),
      'curves': instance.curves?.toJson(),
    };
