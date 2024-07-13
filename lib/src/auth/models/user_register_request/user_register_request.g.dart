// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterRequestImpl _$$UserRegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterRequestImpl(
      id: (json['id'] as num).toInt(),
      nombres: json['nombres'] as String,
      apellidos: json['apellidos'] as String,
      nombreUsuario: json['nombreUsuario'] as String,
      email: json['email'] as String,
      phoneNumber: (json['phoneNumber'] as num?)?.toInt(),
      passwordHash: json['passwordHash'] as String,
    );

Map<String, dynamic> _$$UserRegisterRequestImplToJson(
        _$UserRegisterRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombres': instance.nombres,
      'apellidos': instance.apellidos,
      'nombreUsuario': instance.nombreUsuario,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'passwordHash': instance.passwordHash,
    };
