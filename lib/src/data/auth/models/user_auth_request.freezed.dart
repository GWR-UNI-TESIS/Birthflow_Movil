// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthRequest _$UserAuthRequestFromJson(Map<String, dynamic> json) {
  return _UserAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$UserAuthRequest {
  String? get usuario => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get nombre => throw _privateConstructorUsedError;
  String? get apellido => throw _privateConstructorUsedError;
  String? get correo => throw _privateConstructorUsedError;
  String? get telefono => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthRequestCopyWith<UserAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthRequestCopyWith<$Res> {
  factory $UserAuthRequestCopyWith(
          UserAuthRequest value, $Res Function(UserAuthRequest) then) =
      _$UserAuthRequestCopyWithImpl<$Res, UserAuthRequest>;
  @useResult
  $Res call(
      {String? usuario,
      String? password,
      String? nombre,
      String? apellido,
      String? correo,
      String? telefono});
}

/// @nodoc
class _$UserAuthRequestCopyWithImpl<$Res, $Val extends UserAuthRequest>
    implements $UserAuthRequestCopyWith<$Res> {
  _$UserAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = freezed,
    Object? password = freezed,
    Object? nombre = freezed,
    Object? apellido = freezed,
    Object? correo = freezed,
    Object? telefono = freezed,
  }) {
    return _then(_value.copyWith(
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido: freezed == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String?,
      correo: freezed == correo
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono: freezed == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthRequestImplCopyWith<$Res>
    implements $UserAuthRequestCopyWith<$Res> {
  factory _$$UserAuthRequestImplCopyWith(_$UserAuthRequestImpl value,
          $Res Function(_$UserAuthRequestImpl) then) =
      __$$UserAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? usuario,
      String? password,
      String? nombre,
      String? apellido,
      String? correo,
      String? telefono});
}

/// @nodoc
class __$$UserAuthRequestImplCopyWithImpl<$Res>
    extends _$UserAuthRequestCopyWithImpl<$Res, _$UserAuthRequestImpl>
    implements _$$UserAuthRequestImplCopyWith<$Res> {
  __$$UserAuthRequestImplCopyWithImpl(
      _$UserAuthRequestImpl _value, $Res Function(_$UserAuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = freezed,
    Object? password = freezed,
    Object? nombre = freezed,
    Object? apellido = freezed,
    Object? correo = freezed,
    Object? telefono = freezed,
  }) {
    return _then(_$UserAuthRequestImpl(
      usuario: freezed == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido: freezed == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String?,
      correo: freezed == correo
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono: freezed == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthRequestImpl implements _UserAuthRequest {
  const _$UserAuthRequestImpl(
      {this.usuario,
      this.password,
      this.nombre,
      this.apellido,
      this.correo,
      this.telefono});

  factory _$UserAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthRequestImplFromJson(json);

  @override
  final String? usuario;
  @override
  final String? password;
  @override
  final String? nombre;
  @override
  final String? apellido;
  @override
  final String? correo;
  @override
  final String? telefono;

  @override
  String toString() {
    return 'UserAuthRequest(usuario: $usuario, password: $password, nombre: $nombre, apellido: $apellido, correo: $correo, telefono: $telefono)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthRequestImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido, apellido) ||
                other.apellido == apellido) &&
            (identical(other.correo, correo) || other.correo == correo) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, usuario, password, nombre, apellido, correo, telefono);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthRequestImplCopyWith<_$UserAuthRequestImpl> get copyWith =>
      __$$UserAuthRequestImplCopyWithImpl<_$UserAuthRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _UserAuthRequest implements UserAuthRequest {
  const factory _UserAuthRequest(
      {final String? usuario,
      final String? password,
      final String? nombre,
      final String? apellido,
      final String? correo,
      final String? telefono}) = _$UserAuthRequestImpl;

  factory _UserAuthRequest.fromJson(Map<String, dynamic> json) =
      _$UserAuthRequestImpl.fromJson;

  @override
  String? get usuario;
  @override
  String? get password;
  @override
  String? get nombre;
  @override
  String? get apellido;
  @override
  String? get correo;
  @override
  String? get telefono;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthRequestImplCopyWith<_$UserAuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
