// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function() logout,
    required TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)
        register,
    required TResult Function() refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function()? logout,
    TResult? Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult? Function()? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function()? logout,
    TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(Logout value) logout,
    required TResult Function(Register value) register,
    required TResult Function(RefreshToken value) refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(Logout value)? logout,
    TResult? Function(Register value)? register,
    TResult? Function(RefreshToken value)? refreshToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(Logout value)? logout,
    TResult Function(Register value)? register,
    TResult Function(RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
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
    return 'AuthenticationEvent.loggedIn(username: $username, password: $password)';
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

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function() logout,
    required TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)
        register,
    required TResult Function() refreshToken,
  }) {
    return loggedIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function()? logout,
    TResult? Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult? Function()? refreshToken,
  }) {
    return loggedIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function()? logout,
    TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult Function()? refreshToken,
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
    required TResult Function(Logout value) logout,
    required TResult Function(Register value) register,
    required TResult Function(RefreshToken value) refreshToken,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(Logout value)? logout,
    TResult? Function(Register value)? register,
    TResult? Function(RefreshToken value)? refreshToken,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(Logout value)? logout,
    TResult Function(Register value)? register,
    TResult Function(RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AuthenticationEvent {
  const factory LoggedIn(
      {required final String username,
      required final String password}) = _$LoggedInImpl;

  String get username;
  String get password;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function() logout,
    required TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)
        register,
    required TResult Function() refreshToken,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function()? logout,
    TResult? Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult? Function()? refreshToken,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function()? logout,
    TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(Logout value) logout,
    required TResult Function(Register value) register,
    required TResult Function(RefreshToken value) refreshToken,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(Logout value)? logout,
    TResult? Function(Register value)? register,
    TResult? Function(RefreshToken value)? refreshToken,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(Logout value)? logout,
    TResult Function(Register value)? register,
    TResult Function(RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthenticationEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String nombres,
      String apellidos,
      String nombreUsuario,
      String email,
      String? phoneNumber});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombres = null,
    Object? apellidos = null,
    Object? nombreUsuario = null,
    Object? email = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$RegisterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombres: null == nombres
          ? _value.nombres
          : nombres // ignore: cast_nullable_to_non_nullable
              as String,
      apellidos: null == apellidos
          ? _value.apellidos
          : apellidos // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: null == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
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

class _$RegisterImpl implements Register {
  const _$RegisterImpl(
      {required this.id,
      required this.nombres,
      required this.apellidos,
      required this.nombreUsuario,
      required this.email,
      this.phoneNumber});

  @override
  final int id;
  @override
  final String nombres;
  @override
  final String apellidos;
  @override
  final String nombreUsuario;
  @override
  final String email;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.register(id: $id, nombres: $nombres, apellidos: $apellidos, nombreUsuario: $nombreUsuario, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombres, nombres) || other.nombres == nombres) &&
            (identical(other.apellidos, apellidos) ||
                other.apellidos == apellidos) &&
            (identical(other.nombreUsuario, nombreUsuario) ||
                other.nombreUsuario == nombreUsuario) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, nombres, apellidos, nombreUsuario, email, phoneNumber);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function() logout,
    required TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)
        register,
    required TResult Function() refreshToken,
  }) {
    return register(id, nombres, apellidos, nombreUsuario, email, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function()? logout,
    TResult? Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult? Function()? refreshToken,
  }) {
    return register?.call(
        id, nombres, apellidos, nombreUsuario, email, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function()? logout,
    TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(
          id, nombres, apellidos, nombreUsuario, email, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(Logout value) logout,
    required TResult Function(Register value) register,
    required TResult Function(RefreshToken value) refreshToken,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(Logout value)? logout,
    TResult? Function(Register value)? register,
    TResult? Function(RefreshToken value)? refreshToken,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(Logout value)? logout,
    TResult Function(Register value)? register,
    TResult Function(RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements AuthenticationEvent {
  const factory Register(
      {required final int id,
      required final String nombres,
      required final String apellidos,
      required final String nombreUsuario,
      required final String email,
      final String? phoneNumber}) = _$RegisterImpl;

  int get id;
  String get nombres;
  String get apellidos;
  String get nombreUsuario;
  String get email;
  String? get phoneNumber;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
          _$RefreshTokenImpl value, $Res Function(_$RefreshTokenImpl) then) =
      __$$RefreshTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
      _$RefreshTokenImpl _value, $Res Function(_$RefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshTokenImpl implements RefreshToken {
  const _$RefreshTokenImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function() logout,
    required TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)
        register,
    required TResult Function() refreshToken,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function()? logout,
    TResult? Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult? Function()? refreshToken,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function()? logout,
    TResult Function(int id, String nombres, String apellidos,
            String nombreUsuario, String email, String? phoneNumber)?
        register,
    TResult Function()? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(Logout value) logout,
    required TResult Function(Register value) register,
    required TResult Function(RefreshToken value) refreshToken,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(Logout value)? logout,
    TResult? Function(Register value)? register,
    TResult? Function(RefreshToken value)? refreshToken,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(Logout value)? logout,
    TResult Function(Register value)? register,
    TResult Function(RefreshToken value)? refreshToken,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class RefreshToken implements AuthenticationEvent {
  const factory RefreshToken() = _$RefreshTokenImpl;
}
