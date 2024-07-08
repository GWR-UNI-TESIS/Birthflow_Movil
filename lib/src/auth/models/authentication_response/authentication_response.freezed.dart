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
  String get token => throw _privateConstructorUsedError;
  UserAuthentication get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResponseCopyWith<AuthenticationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) then) =
      _$AuthenticationResponseCopyWithImpl<$Res, AuthenticationResponse>;
  @useResult
  $Res call({String token, UserAuthentication user});

  $UserAuthenticationCopyWith<$Res> get user;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuthentication,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAuthenticationCopyWith<$Res> get user {
    return $UserAuthenticationCopyWith<$Res>(_value.user, (value) {
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
  $Res call({String token, UserAuthentication user});

  @override
  $UserAuthenticationCopyWith<$Res> get user;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$AuthenticationResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuthentication,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationResponseImpl implements _AuthenticationResponse {
  const _$AuthenticationResponseImpl({required this.token, required this.user});

  factory _$AuthenticationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationResponseImplFromJson(json);

  @override
  final String token;
  @override
  final UserAuthentication user;

  @override
  String toString() {
    return 'AuthenticationResponse(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
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
      {required final String token,
      required final UserAuthentication user}) = _$AuthenticationResponseImpl;

  factory _AuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationResponseImpl.fromJson;

  @override
  String get token;
  @override
  UserAuthentication get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationResponseImplCopyWith<_$AuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
