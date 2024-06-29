// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticateResponseImpl _$$AuthenticateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticateResponseImpl(
      token: json['token'] as String,
      user: UserAuth.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticateResponseImplToJson(
        _$AuthenticateResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user.toJson(),
    };
