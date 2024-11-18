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
          isDelete: json['isDelete'] as bool,
          createAt: DateTime.parse(json['createAt'] as String),
          updateAt: json['updateAt'] == null
              ? null
              : DateTime.parse(json['updateAt'] as String),
          deleteAt: json['deleteAt'] == null
              ? null
              : DateTime.parse(json['deleteAt'] as String),
          createdBy: json['createdBy'] as String,
          updateBy: json['updateBy'] as String?,
          deleteBy: json['deleteBy'] as String?,
        );

Map<String, dynamic> _$$PresentationPositionVarietyEntityResponseImplToJson(
        _$PresentationPositionVarietyEntityResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'hodgePlane': instance.hodgePlane,
      'position': instance.position,
      'time': instance.time.toIso8601String(),
      'isDelete': instance.isDelete,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'deleteBy': instance.deleteBy,
    };
