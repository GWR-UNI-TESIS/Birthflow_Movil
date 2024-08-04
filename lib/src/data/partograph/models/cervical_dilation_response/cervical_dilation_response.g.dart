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

Map<String, dynamic> _$$CervicalDilationResponseImplToJson(
        _$CervicalDilationResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'value': instance.value,
      'hour': instance.hour.toIso8601String(),
      'remOrRam': instance.remOrRam,
      'isDelete': instance.isDelete,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'deleteBy': instance.deleteBy,
    };
