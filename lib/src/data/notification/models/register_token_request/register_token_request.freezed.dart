// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterTokenRequest _$RegisterTokenRequestFromJson(Map<String, dynamic> json) {
  return _RegisterTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterTokenRequest {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;

  /// Serializes this RegisterTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterTokenRequestCopyWith<RegisterTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterTokenRequestCopyWith<$Res> {
  factory $RegisterTokenRequestCopyWith(RegisterTokenRequest value,
          $Res Function(RegisterTokenRequest) then) =
      _$RegisterTokenRequestCopyWithImpl<$Res, RegisterTokenRequest>;
  @useResult
  $Res call({String userId, String token, String deviceInfo});
}

/// @nodoc
class _$RegisterTokenRequestCopyWithImpl<$Res,
        $Val extends RegisterTokenRequest>
    implements $RegisterTokenRequestCopyWith<$Res> {
  _$RegisterTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
    Object? deviceInfo = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterTokenRequestImplCopyWith<$Res>
    implements $RegisterTokenRequestCopyWith<$Res> {
  factory _$$RegisterTokenRequestImplCopyWith(_$RegisterTokenRequestImpl value,
          $Res Function(_$RegisterTokenRequestImpl) then) =
      __$$RegisterTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token, String deviceInfo});
}

/// @nodoc
class __$$RegisterTokenRequestImplCopyWithImpl<$Res>
    extends _$RegisterTokenRequestCopyWithImpl<$Res, _$RegisterTokenRequestImpl>
    implements _$$RegisterTokenRequestImplCopyWith<$Res> {
  __$$RegisterTokenRequestImplCopyWithImpl(_$RegisterTokenRequestImpl _value,
      $Res Function(_$RegisterTokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
    Object? deviceInfo = null,
  }) {
    return _then(_$RegisterTokenRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterTokenRequestImpl implements _RegisterTokenRequest {
  const _$RegisterTokenRequestImpl(
      {required this.userId, required this.token, required this.deviceInfo});

  factory _$RegisterTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterTokenRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String token;
  @override
  final String deviceInfo;

  @override
  String toString() {
    return 'RegisterTokenRequest(userId: $userId, token: $token, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterTokenRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, token, deviceInfo);

  /// Create a copy of RegisterTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterTokenRequestImplCopyWith<_$RegisterTokenRequestImpl>
      get copyWith =>
          __$$RegisterTokenRequestImplCopyWithImpl<_$RegisterTokenRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _RegisterTokenRequest implements RegisterTokenRequest {
  const factory _RegisterTokenRequest(
      {required final String userId,
      required final String token,
      required final String deviceInfo}) = _$RegisterTokenRequestImpl;

  factory _RegisterTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterTokenRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get token;
  @override
  String get deviceInfo;

  /// Create a copy of RegisterTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterTokenRequestImplCopyWith<_$RegisterTokenRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
