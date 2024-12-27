// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asign_user_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsignUserGroupResponseImpl _$$AsignUserGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AsignUserGroupResponseImpl(
      partographId: json['partographId'] as String,
      permissionTypeId: (json['permissionTypeId'] as num).toInt(),
      searchUserGroupDtos: (json['searchUserGroupDtos'] as List<dynamic>?)
          ?.map((e) =>
              SearchUserGroupResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AsignUserGroupResponseImplToJson(
        _$AsignUserGroupResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'permissionTypeId': instance.permissionTypeId,
      'searchUserGroupDtos':
          instance.searchUserGroupDtos?.map((e) => e.toJson()).toList(),
    };
