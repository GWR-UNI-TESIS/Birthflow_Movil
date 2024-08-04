// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cervical_dilation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CervicalDilationRequestImpl _$$CervicalDilationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CervicalDilationRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      partographId: json['partographId'] as String,
      value: (json['value'] as num).toDouble(),
      hour: DateTime.parse(json['hour'] as String),
      remOrRam: json['remOrRam'] as bool,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$CervicalDilationRequestImplToJson(
        _$CervicalDilationRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'hour': instance.hour.toIso8601String(),
      'remOrRam': instance.remOrRam,
      'userId': instance.userId,
    };
