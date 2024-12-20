// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_share_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupShareRequestImpl _$$PartographGroupShareRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupShareRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      partographGroupId: (json['partographGroupId'] as num).toInt(),
      userId: json['userId'] as String,
      groupId: (json['groupId'] as num).toInt(),
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$PartographGroupShareRequestImplToJson(
        _$PartographGroupShareRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographGroupId': instance.partographGroupId,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'permissionTypeId': instance.permissionTypeId,
    };
