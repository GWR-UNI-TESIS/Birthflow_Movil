// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_share_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupShareResponseImpl _$$PartographGroupShareResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupShareResponseImpl(
      id: (json['id'] as num).toInt(),
      partographGroupId: (json['partographGroupId'] as num).toInt(),
      userId: json['userId'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      permissionTypeId: (json['permissionTypeId'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PartographGroupShareResponseImplToJson(
        _$PartographGroupShareResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographGroupId': instance.partographGroupId,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'permissionTypeId': instance.permissionTypeId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
