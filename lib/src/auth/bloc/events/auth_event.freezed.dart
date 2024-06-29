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
    required TResult Function(String username, String password) loggedIn,
    required TResult Function(String token) logoutRequested,
    required TResult Function() authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function()? authenticationStatusChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
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
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoggedInImpl(
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

class _$LoggedInImpl implements LoggedIn {
  const _$LoggedInImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
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
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function(String token) logoutRequested,
    required TResult Function() authenticationStatusChecked,
  }) {
    return loggedIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return loggedIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function()? authenticationStatusChecked,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AuthEvent {
  const factory LoggedIn(
      {required final String username,
      required final String password}) = _$LoggedInImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
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
    required TResult Function(String username, String password) loggedIn,
    required TResult Function(String token) logoutRequested,
    required TResult Function() authenticationStatusChecked,
  }) {
    return logoutRequested(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return logoutRequested?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function()? authenticationStatusChecked,
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
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
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
abstract class _$$AuthenticationStatusCheckedImplCopyWith<$Res> {
  factory _$$AuthenticationStatusCheckedImplCopyWith(
          _$AuthenticationStatusCheckedImpl value,
          $Res Function(_$AuthenticationStatusCheckedImpl) then) =
      __$$AuthenticationStatusCheckedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStatusCheckedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticationStatusCheckedImpl>
    implements _$$AuthenticationStatusCheckedImplCopyWith<$Res> {
  __$$AuthenticationStatusCheckedImplCopyWithImpl(
      _$AuthenticationStatusCheckedImpl _value,
      $Res Function(_$AuthenticationStatusCheckedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationStatusCheckedImpl implements AuthenticationStatusChecked {
  const _$AuthenticationStatusCheckedImpl();

  @override
  String toString() {
    return 'AuthEvent.authenticationStatusChecked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStatusCheckedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function(String token) logoutRequested,
    required TResult Function() authenticationStatusChecked,
  }) {
    return authenticationStatusChecked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return authenticationStatusChecked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function()? authenticationStatusChecked,
    required TResult orElse(),
  }) {
    if (authenticationStatusChecked != null) {
      return authenticationStatusChecked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) {
    return authenticationStatusChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) {
    return authenticationStatusChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
    required TResult orElse(),
  }) {
    if (authenticationStatusChecked != null) {
      return authenticationStatusChecked(this);
    }
    return orElse();
  }
}

abstract class AuthenticationStatusChecked implements AuthEvent {
  const factory AuthenticationStatusChecked() =
      _$AuthenticationStatusCheckedImpl;
}
