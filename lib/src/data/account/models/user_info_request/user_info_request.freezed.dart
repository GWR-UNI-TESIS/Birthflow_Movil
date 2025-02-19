// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoRequest _$UserInfoRequestFromJson(Map<String, dynamic> json) {
  return _UserInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$UserInfoRequest {
  String? get id =>
      throw _privateConstructorUsedError; // Identificador único del usuario
  String get name => throw _privateConstructorUsedError; // Nombres del usuario
  String get secondName =>
      throw _privateConstructorUsedError; // Apellidos del usuario
  String get userName =>
      throw _privateConstructorUsedError; // Nombre de usuario para inicio de sesión
  String get email =>
      throw _privateConstructorUsedError; // Correo electrónico del usuario
  int? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this UserInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoRequestCopyWith<UserInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoRequestCopyWith<$Res> {
  factory $UserInfoRequestCopyWith(
          UserInfoRequest value, $Res Function(UserInfoRequest) then) =
      _$UserInfoRequestCopyWithImpl<$Res, UserInfoRequest>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String secondName,
      String userName,
      String email,
      int? phoneNumber});
}

/// @nodoc
class _$UserInfoRequestCopyWithImpl<$Res, $Val extends UserInfoRequest>
    implements $UserInfoRequestCopyWith<$Res> {
  _$UserInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoRequest
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoRequestImplCopyWith<$Res>
    implements $UserInfoRequestCopyWith<$Res> {
  factory _$$UserInfoRequestImplCopyWith(_$UserInfoRequestImpl value,
          $Res Function(_$UserInfoRequestImpl) then) =
      __$$UserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String secondName,
      String userName,
      String email,
      int? phoneNumber});
}

/// @nodoc
class __$$UserInfoRequestImplCopyWithImpl<$Res>
    extends _$UserInfoRequestCopyWithImpl<$Res, _$UserInfoRequestImpl>
    implements _$$UserInfoRequestImplCopyWith<$Res> {
  __$$UserInfoRequestImplCopyWithImpl(
      _$UserInfoRequestImpl _value, $Res Function(_$UserInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoRequest
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
    return _then(_$UserInfoRequestImpl(
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
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoRequestImpl implements _UserInfoRequest {
  const _$UserInfoRequestImpl(
      {this.id,
      required this.name,
      required this.secondName,
      required this.userName,
      required this.email,
      this.phoneNumber});

  factory _$UserInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoRequestImplFromJson(json);

  @override
  final String? id;
// Identificador único del usuario
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
  final int? phoneNumber;

  @override
  String toString() {
    return 'UserInfoRequest(id: $id, name: $name, secondName: $secondName, userName: $userName, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoRequestImpl &&
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

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      __$$UserInfoRequestImplCopyWithImpl<_$UserInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _UserInfoRequest implements UserInfoRequest {
  const factory _UserInfoRequest(
      {final String? id,
      required final String name,
      required final String secondName,
      required final String userName,
      required final String email,
      final int? phoneNumber}) = _$UserInfoRequestImpl;

  factory _UserInfoRequest.fromJson(Map<String, dynamic> json) =
      _$UserInfoRequestImpl.fromJson;

  @override
  String? get id; // Identificador único del usuario
  @override
  String get name; // Nombres del usuario
  @override
  String get secondName; // Apellidos del usuario
  @override
  String get userName; // Nombre de usuario para inicio de sesión
  @override
  String get email; // Correo electrónico del usuario
  @override
  int? get phoneNumber;

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
