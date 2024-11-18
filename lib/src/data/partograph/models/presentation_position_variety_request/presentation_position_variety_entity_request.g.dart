// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_position_variety_entity_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresentationPositionVarietyEntityRequestImpl
    _$$PresentationPositionVarietyEntityRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$PresentationPositionVarietyEntityRequestImpl(
          id: (json['id'] as num?)?.toInt(),
          partographId: json['partographId'] as String,
          hodgePlane: json['hodgePlane'] as String,
          position: json['position'] as String,
          time: DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$$PresentationPositionVarietyEntityRequestImplToJson(
        _$PresentationPositionVarietyEntityRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'hodgePlane': instance.hodgePlane,
      'position': instance.position,
      'time': instance.time.toIso8601String(),
    };
