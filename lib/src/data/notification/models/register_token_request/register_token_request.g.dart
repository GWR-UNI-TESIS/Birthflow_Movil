// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterTokenRequestImpl _$$RegisterTokenRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterTokenRequestImpl(
      userId: json['userId'] as String,
      token: json['token'] as String,
      deviceInfo: json['deviceInfo'] as String,
    );

Map<String, dynamic> _$$RegisterTokenRequestImplToJson(
        _$RegisterTokenRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'token': instance.token,
      'deviceInfo': instance.deviceInfo,
    };
