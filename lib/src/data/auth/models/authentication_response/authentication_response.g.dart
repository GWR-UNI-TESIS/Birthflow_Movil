// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationResponseImpl _$$AuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationResponseImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      user: UserAuthentication.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationResponseImplToJson(
        _$AuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'user': instance.user.toJson(),
    };
