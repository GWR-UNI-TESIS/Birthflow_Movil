// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_share_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographShareResponseImpl _$$PartographShareResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographShareResponseImpl(
      id: (json['id'] as num).toInt(),
      partographId: json['partographId'] as String,
      userId: json['userId'] as String,
      groupTd: (json['groupTd'] as num).toInt(),
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      owner: json['owner'] as String,
    );

Map<String, dynamic> _$$PartographShareResponseImplToJson(
        _$PartographShareResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'userId': instance.userId,
      'groupTd': instance.groupTd,
      'permissionTypeId': instance.permissionTypeId,
      'createdAt': instance.createdAt.toIso8601String(),
      'owner': instance.owner,
    };
