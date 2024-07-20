// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthentication _$UserAuthenticationFromJson(Map<String, dynamic> json) {
  return _UserAuthentication.fromJson(json);
}

/// @nodoc
mixin _$UserAuthentication {
  String? get id =>
      throw _privateConstructorUsedError; // Identificador único del usuario (opcional)
  String get nombres =>
      throw _privateConstructorUsedError; // Nombres del usuario
  String get apellidos =>
      throw _privateConstructorUsedError; // Apellidos del usuario
  String get nombreUsuario =>
      throw _privateConstructorUsedError; // Nombre de usuario para inicio de sesión
  String get passwordHash =>
      throw _privateConstructorUsedError; // Hash de la contraseña del usuario (por seguridad)
  String get email =>
      throw _privateConstructorUsedError; // Correo electrónico del usuario
  String? get phoneNumber =>
      throw _privateConstructorUsedError; // Número telefónico del usuario (opcional)
  bool get isDelete =>
      throw _privateConstructorUsedError; // Indica si el usuario está eliminado (marcado para borrado)
  String? get createdAt =>
      throw _privateConstructorUsedError; // Fecha y hora de creación del usuario (viene del servidor)
  int? get createdBy =>
      throw _privateConstructorUsedError; // Identificador del usuario que creó este registro (viene del servidor)
  String? get updatedAt =>
      throw _privateConstructorUsedError; // Fecha y hora de última actualización del usuario (viene del servidor)
  String? get deletedAt =>
      throw _privateConstructorUsedError; // Fecha y hora de eliminación del usuario (viene del servidor)
  String? get deletedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticationCopyWith<UserAuthentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationCopyWith<$Res> {
  factory $UserAuthenticationCopyWith(
          UserAuthentication value, $Res Function(UserAuthentication) then) =
      _$UserAuthenticationCopyWithImpl<$Res, UserAuthentication>;
  @useResult
  $Res call(
      {String? id,
      String nombres,
      String apellidos,
      String nombreUsuario,
      String passwordHash,
      String email,
      String? phoneNumber,
      bool isDelete,
      String? createdAt,
      int? createdBy,
      String? updatedAt,
      String? deletedAt,
      String? deletedBy});
}

/// @nodoc
class _$UserAuthenticationCopyWithImpl<$Res, $Val extends UserAuthentication>
    implements $UserAuthenticationCopyWith<$Res> {
  _$UserAuthenticationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nombres = null,
    Object? apellidos = null,
    Object? nombreUsuario = null,
    Object? passwordHash = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? isDelete = null,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nombres: null == nombres
          ? _value.nombres
          : nombres // ignore: cast_nullable_to_non_nullable
              as String,
      apellidos: null == apellidos
          ? _value.apellidos
          : apellidos // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: null == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      passwordHash: null == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthenticationImplCopyWith<$Res>
    implements $UserAuthenticationCopyWith<$Res> {
  factory _$$UserAuthenticationImplCopyWith(_$UserAuthenticationImpl value,
          $Res Function(_$UserAuthenticationImpl) then) =
      __$$UserAuthenticationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String nombres,
      String apellidos,
      String nombreUsuario,
      String passwordHash,
      String email,
      String? phoneNumber,
      bool isDelete,
      String? createdAt,
      int? createdBy,
      String? updatedAt,
      String? deletedAt,
      String? deletedBy});
}

/// @nodoc
class __$$UserAuthenticationImplCopyWithImpl<$Res>
    extends _$UserAuthenticationCopyWithImpl<$Res, _$UserAuthenticationImpl>
    implements _$$UserAuthenticationImplCopyWith<$Res> {
  __$$UserAuthenticationImplCopyWithImpl(_$UserAuthenticationImpl _value,
      $Res Function(_$UserAuthenticationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nombres = null,
    Object? apellidos = null,
    Object? nombreUsuario = null,
    Object? passwordHash = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? isDelete = null,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$UserAuthenticationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nombres: null == nombres
          ? _value.nombres
          : nombres // ignore: cast_nullable_to_non_nullable
              as String,
      apellidos: null == apellidos
          ? _value.apellidos
          : apellidos // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: null == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String,
      passwordHash: null == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isDelete: null == isDelete
          ? _value.isDelete
          : isDelete // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticationImpl implements _UserAuthentication {
  const _$UserAuthenticationImpl(
      {required this.id,
      required this.nombres,
      required this.apellidos,
      required this.nombreUsuario,
      required this.passwordHash,
      required this.email,
      this.phoneNumber,
      required this.isDelete,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.deletedAt,
      this.deletedBy});

  factory _$UserAuthenticationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthenticationImplFromJson(json);

  @override
  final String? id;
// Identificador único del usuario (opcional)
  @override
  final String nombres;
// Nombres del usuario
  @override
  final String apellidos;
// Apellidos del usuario
  @override
  final String nombreUsuario;
// Nombre de usuario para inicio de sesión
  @override
  final String passwordHash;
// Hash de la contraseña del usuario (por seguridad)
  @override
  final String email;
// Correo electrónico del usuario
  @override
  final String? phoneNumber;
// Número telefónico del usuario (opcional)
  @override
  final bool isDelete;
// Indica si el usuario está eliminado (marcado para borrado)
  @override
  final String? createdAt;
// Fecha y hora de creación del usuario (viene del servidor)
  @override
  final int? createdBy;
// Identificador del usuario que creó este registro (viene del servidor)
  @override
  final String? updatedAt;
// Fecha y hora de última actualización del usuario (viene del servidor)
  @override
  final String? deletedAt;
// Fecha y hora de eliminación del usuario (viene del servidor)
  @override
  final String? deletedBy;

  @override
  String toString() {
    return 'UserAuthentication(id: $id, nombres: $nombres, apellidos: $apellidos, nombreUsuario: $nombreUsuario, passwordHash: $passwordHash, email: $email, phoneNumber: $phoneNumber, isDelete: $isDelete, createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, deletedAt: $deletedAt, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombres, nombres) || other.nombres == nombres) &&
            (identical(other.apellidos, apellidos) ||
                other.apellidos == apellidos) &&
            (identical(other.nombreUsuario, nombreUsuario) ||
                other.nombreUsuario == nombreUsuario) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isDelete, isDelete) ||
                other.isDelete == isDelete) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nombres,
      apellidos,
      nombreUsuario,
      passwordHash,
      email,
      phoneNumber,
      isDelete,
      createdAt,
      createdBy,
      updatedAt,
      deletedAt,
      deletedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthenticationImplCopyWith<_$UserAuthenticationImpl> get copyWith =>
      __$$UserAuthenticationImplCopyWithImpl<_$UserAuthenticationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticationImplToJson(
      this,
    );
  }
}

abstract class _UserAuthentication implements UserAuthentication {
  const factory _UserAuthentication(
      {required final String? id,
      required final String nombres,
      required final String apellidos,
      required final String nombreUsuario,
      required final String passwordHash,
      required final String email,
      final String? phoneNumber,
      required final bool isDelete,
      final String? createdAt,
      final int? createdBy,
      final String? updatedAt,
      final String? deletedAt,
      final String? deletedBy}) = _$UserAuthenticationImpl;

  factory _UserAuthentication.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticationImpl.fromJson;

  @override
  String? get id;
  @override // Identificador único del usuario (opcional)
  String get nombres;
  @override // Nombres del usuario
  String get apellidos;
  @override // Apellidos del usuario
  String get nombreUsuario;
  @override // Nombre de usuario para inicio de sesión
  String get passwordHash;
  @override // Hash de la contraseña del usuario (por seguridad)
  String get email;
  @override // Correo electrónico del usuario
  String? get phoneNumber;
  @override // Número telefónico del usuario (opcional)
  bool get isDelete;
  @override // Indica si el usuario está eliminado (marcado para borrado)
  String? get createdAt;
  @override // Fecha y hora de creación del usuario (viene del servidor)
  int? get createdBy;
  @override // Identificador del usuario que creó este registro (viene del servidor)
  String? get updatedAt;
  @override // Fecha y hora de última actualización del usuario (viene del servidor)
  String? get deletedAt;
  @override // Fecha y hora de eliminación del usuario (viene del servidor)
  String? get deletedBy;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthenticationImplCopyWith<_$UserAuthenticationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
