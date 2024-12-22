// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchUserGroupResponseImpl _$$SearchUserGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchUserGroupResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      partographGroupId: (json['partographGroupId'] as num).toInt(),
      userId: json['userId'] as String,
      groupId: (json['groupId'] as num).toInt(),
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchUserGroupResponseImplToJson(
        _$SearchUserGroupResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographGroupId': instance.partographGroupId,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'permissionTypeId': instance.permissionTypeId,
    };
