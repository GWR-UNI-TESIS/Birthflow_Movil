// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegisterRequest _$UserRegisterRequestFromJson(Map<String, dynamic> json) {
  return _UserRegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterRequest {
  String? get id =>
      throw _privateConstructorUsedError; // Identificador único del usuario (usualmente autogenerado por el servidor)
  String get name => throw _privateConstructorUsedError; // Nombres del usuario
  String get secondName =>
      throw _privateConstructorUsedError; // Apellidos del usuario
  String get userName =>
      throw _privateConstructorUsedError; // Nombre de usuario para inicio de sesión
  String get email =>
      throw _privateConstructorUsedError; // Correo electrónico del usuario
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this UserRegisterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegisterRequestCopyWith<UserRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterRequestCopyWith<$Res> {
  factory $UserRegisterRequestCopyWith(
          UserRegisterRequest value, $Res Function(UserRegisterRequest) then) =
      _$UserRegisterRequestCopyWithImpl<$Res, UserRegisterRequest>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String secondName,
      String userName,
      String email,
      String? phoneNumber});
}

/// @nodoc
class _$UserRegisterRequestCopyWithImpl<$Res, $Val extends UserRegisterRequest>
    implements $UserRegisterRequestCopyWith<$Res> {
  _$UserRegisterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? secondName = null,
    Object? userName = null,
    Object? email = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegisterRequestImplCopyWith<$Res>
    implements $UserRegisterRequestCopyWith<$Res> {
  factory _$$UserRegisterRequestImplCopyWith(_$UserRegisterRequestImpl value,
          $Res Function(_$UserRegisterRequestImpl) then) =
      __$$UserRegisterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String secondName,
      String userName,
      String email,
      String? phoneNumber});
}

/// @nodoc
class __$$UserRegisterRequestImplCopyWithImpl<$Res>
    extends _$UserRegisterRequestCopyWithImpl<$Res, _$UserRegisterRequestImpl>
    implements _$$UserRegisterRequestImplCopyWith<$Res> {
  __$$UserRegisterRequestImplCopyWithImpl(_$UserRegisterRequestImpl _value,
      $Res Function(_$UserRegisterRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? secondName = null,
    Object? userName = null,
    Object? email = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserRegisterRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterRequestImpl implements _UserRegisterRequest {
  const _$UserRegisterRequestImpl(
      {this.id,
      required this.name,
      required this.secondName,
      required this.userName,
      required this.email,
      this.phoneNumber});

  factory _$UserRegisterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterRequestImplFromJson(json);

  @override
  final String? id;
// Identificador único del usuario (usualmente autogenerado por el servidor)
  @override
  final String name;
// Nombres del usuario
  @override
  final String secondName;
// Apellidos del usuario
  @override
  final String userName;
// Nombre de usuario para inicio de sesión
  @override
  final String email;
// Correo electrónico del usuario
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'UserRegisterRequest(id: $id, name: $name, secondName: $secondName, userName: $userName, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, secondName, userName, email, phoneNumber);

  /// Create a copy of UserRegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterRequestImplCopyWith<_$UserRegisterRequestImpl> get copyWith =>
      __$$UserRegisterRequestImplCopyWithImpl<_$UserRegisterRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterRequest implements UserRegisterRequest {
  const factory _UserRegisterRequest(
      {final String? id,
      required final String name,
      required final String secondName,
      required final String userName,
      required final String email,
      final String? phoneNumber}) = _$UserRegisterRequestImpl;

  factory _UserRegisterRequest.fromJson(Map<String, dynamic> json) =
      _$UserRegisterRequestImpl.fromJson;

  @override
  String?
      get id; // Identificador único del usuario (usualmente autogenerado por el servidor)
  @override
  String get name; // Nombres del usuario
  @override
  String get secondName; // Apellidos del usuario
  @override
  String get userName; // Nombre de usuario para inicio de sesión
  @override
  String get email; // Correo electrónico del usuario
  @override
  String? get phoneNumber;

  /// Create a copy of UserRegisterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegisterRequestImplCopyWith<_$UserRegisterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
