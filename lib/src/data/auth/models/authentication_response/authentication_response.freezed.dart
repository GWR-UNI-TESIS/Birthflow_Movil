// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResponse {
  String get accessToken =>
      throw _privateConstructorUsedError; // Token de autenticación
  String get refreshToken => throw _privateConstructorUsedError;
  UserAuthentication? get user => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationResponseCopyWith<AuthenticationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) then) =
      _$AuthenticationResponseCopyWithImpl<$Res, AuthenticationResponse>;
  @useResult
  $Res call(
      {String accessToken, String refreshToken, UserAuthentication? user});

  $UserAuthenticationCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<$Res,
        $Val extends AuthenticationResponse>
    implements $AuthenticationResponseCopyWith<$Res> {
  _$AuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuthentication?,
    ) as $Val);
  }

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserAuthenticationCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationResponseImplCopyWith<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  factory _$$AuthenticationResponseImplCopyWith(
          _$AuthenticationResponseImpl value,
          $Res Function(_$AuthenticationResponseImpl) then) =
      __$$AuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken, String refreshToken, UserAuthentication? user});

  @override
  $UserAuthenticationCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticationResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationResponseImpl>
    implements _$$AuthenticationResponseImplCopyWith<$Res> {
  __$$AuthenticationResponseImplCopyWithImpl(
      _$AuthenticationResponseImpl _value,
      $Res Function(_$AuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? user = freezed,
  }) {
    return _then(_$AuthenticationResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuthentication?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationResponseImpl implements _AuthenticationResponse {
  const _$AuthenticationResponseImpl(
      {required this.accessToken, required this.refreshToken, this.user});

  factory _$AuthenticationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationResponseImplFromJson(json);

  @override
  final String accessToken;
// Token de autenticación
  @override
  final String refreshToken;
  @override
  final UserAuthentication? user;

  @override
  String toString() {
    return 'AuthenticationResponse(accessToken: $accessToken, refreshToken: $refreshToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken, user);

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResponseImplCopyWith<_$AuthenticationResponseImpl>
      get copyWith => __$$AuthenticationResponseImplCopyWithImpl<
          _$AuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationResponse implements AuthenticationResponse {
  const factory _AuthenticationResponse(
      {required final String accessToken,
      required final String refreshToken,
      final UserAuthentication? user}) = _$AuthenticationResponseImpl;

  factory _AuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationResponseImpl.fromJson;

  @override
  String get accessToken; // Token de autenticación
  @override
  String get refreshToken;
  @override
  UserAuthentication? get user;

  /// Create a copy of AuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationResponseImplCopyWith<_$AuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
