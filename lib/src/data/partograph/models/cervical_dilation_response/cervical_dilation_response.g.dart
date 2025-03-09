// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cervical_dilation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CervicalDilationResponseImpl _$$CervicalDilationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CervicalDilationResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      value: (json['value'] as num).toDouble(),
      hour: DateTime.parse(json['hour'] as String),
      remOrRam: json['remOrRam'] as bool,
      curves: json['curves'] == null
          ? null
          : AlertCurvesResponse.fromJson(
              json['curves'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CervicalDilationResponseImplToJson(
        _$CervicalDilationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'hour': instance.hour.toIso8601String(),
      'remOrRam': instance.remOrRam,
      'curves': instance.curves?.toJson(),
    };
