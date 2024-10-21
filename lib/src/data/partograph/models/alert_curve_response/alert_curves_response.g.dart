// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_curves_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertCurvesResponseImpl _$$AlertCurvesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertCurvesResponseImpl(
      alertCurve: (json['alertCurve'] as List<dynamic>?)
          ?.map((e) => AlertCurvesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      newAlertCurve: (json['newAlertCurve'] as List<dynamic>?)
          ?.map((e) => AlertCurvesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlertCurvesResponseImplToJson(
        _$AlertCurvesResponseImpl instance) =>
    <String, dynamic>{
      'alertCurve': instance.alertCurve?.map((e) => e.toJson()).toList(),
      'newAlertCurve': instance.newAlertCurve?.map((e) => e.toJson()).toList(),
    };
