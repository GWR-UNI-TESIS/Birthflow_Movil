// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateRequestImpl _$$AuthenticateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateRequestImpl(
      userName: json['userName'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$AuthenticateRequestImplToJson(
        _$AuthenticateRequestImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
    };
