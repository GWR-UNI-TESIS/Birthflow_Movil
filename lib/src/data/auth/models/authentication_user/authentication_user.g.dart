// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthenticationImpl _$$UserAuthenticationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthenticationImpl(
      id: json['id'] as String?,
      nombres: json['nombres'] as String,
      apellidos: json['apellidos'] as String,
      nombreUsuario: json['nombreUsuario'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      passwordHash: json['passwordHash'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticationImplToJson(
        _$UserAuthenticationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombres': instance.nombres,
      'apellidos': instance.apellidos,
      'nombreUsuario': instance.nombreUsuario,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'passwordHash': instance.passwordHash,
    };
