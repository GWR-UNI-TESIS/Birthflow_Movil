// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGroupResponseImpl _$$UserGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserGroupResponseImpl(
      userId: json['userId'] as String,
      groupId: (json['groupId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserGroupResponseImplToJson(
        _$UserGroupResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'groupId': instance.groupId,
    };
