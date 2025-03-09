// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoRequestImpl _$$UserInfoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoRequestImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      secondName: json['secondName'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserInfoRequestImplToJson(
        _$UserInfoRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'secondName': instance.secondName,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
