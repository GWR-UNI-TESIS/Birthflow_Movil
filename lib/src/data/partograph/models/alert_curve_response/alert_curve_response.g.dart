// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_curve_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertCurveResponseImpl _$$AlertCurveResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AlertCurveResponseImpl(
      cervicalDilation: (json['cervicalDilation'] as num).toDouble(),
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$AlertCurveResponseImplToJson(
        _$AlertCurveResponseImpl instance) =>
    <String, dynamic>{
      'cervicalDilation': instance.cervicalDilation,
      'time': instance.time.toIso8601String(),
    };
