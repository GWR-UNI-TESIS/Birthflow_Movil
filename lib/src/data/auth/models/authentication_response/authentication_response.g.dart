// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationResponseImpl _$$AuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationResponseImpl(
      token: json['token'] as String,
      user: UserAuthentication.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationResponseImplToJson(
        _$AuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user.toJson(),
    };
