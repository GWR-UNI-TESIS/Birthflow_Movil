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
      passwordHash: json['passwordHash'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      isDelete: json['isDelete'] as bool,
      createdAt: json['createdAt'] as String?,
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      deletedBy: json['deletedBy'] as String?,
    );

Map<String, dynamic> _$$UserAuthenticationImplToJson(
        _$UserAuthenticationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombres': instance.nombres,
      'apellidos': instance.apellidos,
      'nombreUsuario': instance.nombreUsuario,
      'passwordHash': instance.passwordHash,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isDelete': instance.isDelete,
      'createdAt': instance.createdAt,
      'createdBy': instance.createdBy,
      'updatedAt': instance.updatedAt,
      'deletedAt': instance.deletedAt,
      'deletedBy': instance.deletedBy,
    };
