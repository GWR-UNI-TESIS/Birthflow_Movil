// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserGroupRequestImpl _$$UserGroupRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserGroupRequestImpl(
      userId: json['userId'] as String,
      groupId: (json['groupId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserGroupRequestImplToJson(
        _$UserGroupRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'groupId': instance.groupId,
    };
