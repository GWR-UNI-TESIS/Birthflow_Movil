// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function(String token) logoutRequested,
    required TResult Function() validateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? validateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function(String token)? logoutRequested,
    TResult Function()? validateToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(ValidateToken value) validateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(ValidateToken value)? validateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(ValidateToken value)? validateToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(_$LoginRequestedImpl value,
          $Res Function(_$LoginRequestedImpl) then) =
      __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
      _$LoginRequestedImpl _value, $Res Function(_$LoginRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestedImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestedImpl implements LoginRequested {
  const _$LoginRequestedImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function(String token) logoutRequested,
    required TResult Function() validateToken,
  }) {
    return loginRequested(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? validateToken,
  }) {
    return loginRequested?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function(String token)? logoutRequested,
    TResult Function()? validateToken,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(ValidateToken value) validateToken,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(ValidateToken value)? validateToken,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(ValidateToken value)? validateToken,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements AuthEvent {
  const factory LoginRequested(
      {required final String username,
      required final String password}) = _$LoginRequestedImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(_$LogoutRequestedImpl value,
          $Res Function(_$LogoutRequestedImpl) then) =
      __$$LogoutRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
      _$LogoutRequestedImpl _value, $Res Function(_$LogoutRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$LogoutRequestedImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutRequestedImpl implements LogoutRequested {
  const _$LogoutRequestedImpl({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.logoutRequested(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutRequestedImplCopyWith<_$LogoutRequestedImpl> get copyWith =>
      __$$LogoutRequestedImplCopyWithImpl<_$LogoutRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function(String token) logoutRequested,
    required TResult Function() validateToken,
  }) {
    return logoutRequested(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? validateToken,
  }) {
    return logoutRequested?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function(String token)? logoutRequested,
    TResult Function()? validateToken,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(ValidateToken value) validateToken,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(ValidateToken value)? validateToken,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(ValidateToken value)? validateToken,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AuthEvent {
  const factory LogoutRequested({required final String token}) =
      _$LogoutRequestedImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$LogoutRequestedImplCopyWith<_$LogoutRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateTokenImplCopyWith<$Res> {
  factory _$$ValidateTokenImplCopyWith(
          _$ValidateTokenImpl value, $Res Function(_$ValidateTokenImpl) then) =
      __$$ValidateTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateTokenImpl>
    implements _$$ValidateTokenImplCopyWith<$Res> {
  __$$ValidateTokenImplCopyWithImpl(
      _$ValidateTokenImpl _value, $Res Function(_$ValidateTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateTokenImpl implements ValidateToken {
  const _$ValidateTokenImpl();

  @override
  String toString() {
    return 'AuthEvent.validateToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function(String token) logoutRequested,
    required TResult Function() validateToken,
  }) {
    return validateToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? validateToken,
  }) {
    return validateToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function(String token)? logoutRequested,
    TResult Function()? validateToken,
    required TResult orElse(),
  }) {
    if (validateToken != null) {
      return validateToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(ValidateToken value) validateToken,
  }) {
    return validateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(ValidateToken value)? validateToken,
  }) {
    return validateToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(ValidateToken value)? validateToken,
    required TResult orElse(),
  }) {
    if (validateToken != null) {
      return validateToken(this);
    }
    return orElse();
  }
}

abstract class ValidateToken implements AuthEvent {
  const factory ValidateToken() = _$ValidateTokenImpl;
}
