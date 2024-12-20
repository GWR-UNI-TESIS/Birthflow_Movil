// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_share_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographShareRequestImpl _$$PartographShareRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographShareRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      partographId: json['partographId'] as String,
      userId: json['userId'] as String,
      groupId: (json['groupId'] as num).toInt(),
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$PartographShareRequestImplToJson(
        _$PartographShareRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'permissionTypeId': instance.permissionTypeId,
    };
