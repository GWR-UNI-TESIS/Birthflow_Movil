// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  String get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String token) registerToken,
    required TResult Function(String userId, String token) tokenRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String token)? registerToken,
    TResult? Function(String userId, String token)? tokenRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String token)? registerToken,
    TResult Function(String userId, String token)? tokenRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterTokenEvent value) registerToken,
    required TResult Function(TokenRefreshedEvent value) tokenRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterTokenEvent value)? registerToken,
    TResult? Function(TokenRefreshedEvent value)? tokenRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterTokenEvent value)? registerToken,
    TResult Function(TokenRefreshedEvent value)? tokenRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEventCopyWith<NotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterTokenEventImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$RegisterTokenEventImplCopyWith(_$RegisterTokenEventImpl value,
          $Res Function(_$RegisterTokenEventImpl) then) =
      __$$RegisterTokenEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class __$$RegisterTokenEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$RegisterTokenEventImpl>
    implements _$$RegisterTokenEventImplCopyWith<$Res> {
  __$$RegisterTokenEventImplCopyWithImpl(_$RegisterTokenEventImpl _value,
      $Res Function(_$RegisterTokenEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_$RegisterTokenEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterTokenEventImpl implements RegisterTokenEvent {
  const _$RegisterTokenEventImpl({required this.userId, required this.token});

  @override
  final String userId;
  @override
  final String token;

  @override
  String toString() {
    return 'NotificationEvent.registerToken(userId: $userId, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterTokenEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, token);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterTokenEventImplCopyWith<_$RegisterTokenEventImpl> get copyWith =>
      __$$RegisterTokenEventImplCopyWithImpl<_$RegisterTokenEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String token) registerToken,
    required TResult Function(String userId, String token) tokenRefreshed,
  }) {
    return registerToken(userId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String token)? registerToken,
    TResult? Function(String userId, String token)? tokenRefreshed,
  }) {
    return registerToken?.call(userId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String token)? registerToken,
    TResult Function(String userId, String token)? tokenRefreshed,
    required TResult orElse(),
  }) {
    if (registerToken != null) {
      return registerToken(userId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterTokenEvent value) registerToken,
    required TResult Function(TokenRefreshedEvent value) tokenRefreshed,
  }) {
    return registerToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterTokenEvent value)? registerToken,
    TResult? Function(TokenRefreshedEvent value)? tokenRefreshed,
  }) {
    return registerToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterTokenEvent value)? registerToken,
    TResult Function(TokenRefreshedEvent value)? tokenRefreshed,
    required TResult orElse(),
  }) {
    if (registerToken != null) {
      return registerToken(this);
    }
    return orElse();
  }
}

abstract class RegisterTokenEvent implements NotificationEvent {
  const factory RegisterTokenEvent(
      {required final String userId,
      required final String token}) = _$RegisterTokenEventImpl;

  @override
  String get userId;
  @override
  String get token;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterTokenEventImplCopyWith<_$RegisterTokenEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenRefreshedEventImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$TokenRefreshedEventImplCopyWith(_$TokenRefreshedEventImpl value,
          $Res Function(_$TokenRefreshedEventImpl) then) =
      __$$TokenRefreshedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String token});
}

/// @nodoc
class __$$TokenRefreshedEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$TokenRefreshedEventImpl>
    implements _$$TokenRefreshedEventImplCopyWith<$Res> {
  __$$TokenRefreshedEventImplCopyWithImpl(_$TokenRefreshedEventImpl _value,
      $Res Function(_$TokenRefreshedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_$TokenRefreshedEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TokenRefreshedEventImpl implements TokenRefreshedEvent {
  const _$TokenRefreshedEventImpl({required this.userId, required this.token});

  @override
  final String userId;
  @override
  final String token;

  @override
  String toString() {
    return 'NotificationEvent.tokenRefreshed(userId: $userId, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRefreshedEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, token);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRefreshedEventImplCopyWith<_$TokenRefreshedEventImpl> get copyWith =>
      __$$TokenRefreshedEventImplCopyWithImpl<_$TokenRefreshedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String token) registerToken,
    required TResult Function(String userId, String token) tokenRefreshed,
  }) {
    return tokenRefreshed(userId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String token)? registerToken,
    TResult? Function(String userId, String token)? tokenRefreshed,
  }) {
    return tokenRefreshed?.call(userId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String token)? registerToken,
    TResult Function(String userId, String token)? tokenRefreshed,
    required TResult orElse(),
  }) {
    if (tokenRefreshed != null) {
      return tokenRefreshed(userId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterTokenEvent value) registerToken,
    required TResult Function(TokenRefreshedEvent value) tokenRefreshed,
  }) {
    return tokenRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterTokenEvent value)? registerToken,
    TResult? Function(TokenRefreshedEvent value)? tokenRefreshed,
  }) {
    return tokenRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterTokenEvent value)? registerToken,
    TResult Function(TokenRefreshedEvent value)? tokenRefreshed,
    required TResult orElse(),
  }) {
    if (tokenRefreshed != null) {
      return tokenRefreshed(this);
    }
    return orElse();
  }
}

abstract class TokenRefreshedEvent implements NotificationEvent {
  const factory TokenRefreshedEvent(
      {required final String userId,
      required final String token}) = _$TokenRefreshedEventImpl;

  @override
  String get userId;
  @override
  String get token;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenRefreshedEventImplCopyWith<_$TokenRefreshedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
