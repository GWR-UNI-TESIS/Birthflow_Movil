// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetal_heart_rate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetalHeartRateResponseImpl _$$FetalHeartRateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetalHeartRateResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      value: json['value'] as String,
      time: DateTime.parse(json['time'] as String),
      isDelete: json['isDelete'] as bool,
      createAt: DateTime.parse(json['createAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : DateTime.parse(json['deleteAt'] as String),
      createdBy: json['createdBy'] as String?,
      updateBy: json['updateBy'] as String?,
      deleteBy: json['deleteBy'] as String?,
    );

Map<String, dynamic> _$$FetalHeartRateResponseImplToJson(
        _$FetalHeartRateResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'time': instance.time.toIso8601String(),
      'isDelete': instance.isDelete,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'deleteBy': instance.deleteBy,
    };
