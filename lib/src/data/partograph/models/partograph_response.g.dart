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
      date: json['date'] as String,
      observation: json['observation'] as String,
      isDelete: json['isDelete'] as bool,
      createdAt: json['createdAt'] as String,
      createdBy: json['createdBy'] as String,
      deletedAt: json['deletedAt'] as String?,
      deletedBy: json['deletedBy'] as String?,
    );

Map<String, dynamic> _$$PartographResponseImplToJson(
        _$PartographResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'name': instance.name,
      'recordName': instance.recordName,
      'date': instance.date,
      'observation': instance.observation,
      'isDelete': instance.isDelete,
      'createdAt': instance.createdAt,
      'createdBy': instance.createdBy,
      'deletedAt': instance.deletedAt,
      'deletedBy': instance.deletedBy,
    };
