// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticateResponse _$AuthenticateResponseFromJson(Map<String, dynamic> json) {
  return _AuthenticateResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateResponse {
  String get token => throw _privateConstructorUsedError;
  UserAuth get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateResponseCopyWith<AuthenticateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateResponseCopyWith<$Res> {
  factory $AuthenticateResponseCopyWith(AuthenticateResponse value,
          $Res Function(AuthenticateResponse) then) =
      _$AuthenticateResponseCopyWithImpl<$Res, AuthenticateResponse>;
  @useResult
  $Res call({String token, UserAuth user});

  $UserAuthCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthenticateResponseCopyWithImpl<$Res,
        $Val extends AuthenticateResponse>
    implements $AuthenticateResponseCopyWith<$Res> {
  _$AuthenticateResponseCopyWithImpl(this._value, this._then);

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
              as UserAuth,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAuthCopyWith<$Res> get user {
    return $UserAuthCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticateResponseImplCopyWith<$Res>
    implements $AuthenticateResponseCopyWith<$Res> {
  factory _$$AuthenticateResponseImplCopyWith(_$AuthenticateResponseImpl value,
          $Res Function(_$AuthenticateResponseImpl) then) =
      __$$AuthenticateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, UserAuth user});

  @override
  $UserAuthCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticateResponseImplCopyWithImpl<$Res>
    extends _$AuthenticateResponseCopyWithImpl<$Res, _$AuthenticateResponseImpl>
    implements _$$AuthenticateResponseImplCopyWith<$Res> {
  __$$AuthenticateResponseImplCopyWithImpl(_$AuthenticateResponseImpl _value,
      $Res Function(_$AuthenticateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$AuthenticateResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuth,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateResponseImpl implements _AuthenticateResponse {
  const _$AuthenticateResponseImpl({required this.token, required this.user});

  factory _$AuthenticateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateResponseImplFromJson(json);

  @override
  final String token;
  @override
  final UserAuth user;

  @override
  String toString() {
    return 'AuthenticateResponse(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateResponseImplCopyWith<_$AuthenticateResponseImpl>
      get copyWith =>
          __$$AuthenticateResponseImplCopyWithImpl<_$AuthenticateResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateResponse implements AuthenticateResponse {
  const factory _AuthenticateResponse(
      {required final String token,
      required final UserAuth user}) = _$AuthenticateResponseImpl;

  factory _AuthenticateResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticateResponseImpl.fromJson;

  @override
  String get token;
  @override
  UserAuth get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateResponseImplCopyWith<_$AuthenticateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
