// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterRequestImpl _$$UserRegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterRequestImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      secondName: json['secondName'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserRegisterRequestImplToJson(
        _$UserRegisterRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'secondName': instance.secondName,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
