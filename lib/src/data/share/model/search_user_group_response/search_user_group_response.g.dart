// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchUserGroupResponseImpl _$$SearchUserGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchUserGroupResponseImpl(
      name: json['name'] as String,
      userId: json['userId'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$SearchUserGroupResponseImplToJson(
        _$SearchUserGroupResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'groupId': instance.groupId,
      'type': instance.type,
    };
