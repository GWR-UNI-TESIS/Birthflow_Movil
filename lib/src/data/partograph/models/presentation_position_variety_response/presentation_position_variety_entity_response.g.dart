// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_position_variety_entity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresentationPositionVarietyEntityResponseImpl
    _$$PresentationPositionVarietyEntityResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$PresentationPositionVarietyEntityResponseImpl(
          id: (json['id'] as num?)?.toInt(),
          partographId: json['partographId'] as String,
          hodgePlane: (json['hodgePlane'] as num).toInt(),
          position: (json['position'] as num).toInt(),
          time: DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$$PresentationPositionVarietyEntityResponseImplToJson(
        _$PresentationPositionVarietyEntityResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'hodgePlane': instance.hodgePlane,
      'position': instance.position,
      'time': instance.time.toIso8601String(),
    };
