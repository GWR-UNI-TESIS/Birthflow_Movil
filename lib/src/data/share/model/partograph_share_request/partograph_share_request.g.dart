// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_share_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographShareRequestImpl _$$PartographShareRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographShareRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      partographGroupId: (json['partographGroupId'] as num).toInt(),
      userId: json['userId'] as String,
      groupTd: (json['groupTd'] as num).toInt(),
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$PartographShareRequestImplToJson(
        _$PartographShareRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographGroupId': instance.partographGroupId,
      'userId': instance.userId,
      'groupTd': instance.groupTd,
      'permissionTypeId': instance.permissionTypeId,
    };
