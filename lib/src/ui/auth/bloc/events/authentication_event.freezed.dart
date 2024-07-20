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
    required TResult Function(String token) logoutRequested,
    required TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)
        register,
    required TResult Function() authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult? Function()? authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult Function()? authenticationStatusChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(Register value) register,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(Register value)? register,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(Register value)? register,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
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
    required TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)
        register,
    required TResult Function() authenticationStatusChecked,
  }) {
    return loggedIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return loggedIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
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
    required TResult Function(Register value) register,
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
    TResult? Function(Register value)? register,
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
    TResult Function(Register value)? register,
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

abstract class LoggedIn implements AuthenticationEvent {
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
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
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
    return 'AuthenticationEvent.logoutRequested(token: $token)';
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
    required TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)
        register,
    required TResult Function() authenticationStatusChecked,
  }) {
    return logoutRequested(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return logoutRequested?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
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
    required TResult Function(Register value) register,
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
    TResult? Function(Register value)? register,
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
    TResult Function(Register value)? register,
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

abstract class LogoutRequested implements AuthenticationEvent {
  const factory LogoutRequested({required final String token}) =
      _$LogoutRequestedImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$LogoutRequestedImplCopyWith<_$LogoutRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
      String? phoneNumber,
      String passwordHash});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombres = null,
    Object? apellidos = null,
    Object? nombreUsuario = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? passwordHash = null,
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
      passwordHash: null == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.phoneNumber,
      required this.passwordHash});

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
  final String passwordHash;

  @override
  String toString() {
    return 'AuthenticationEvent.register(id: $id, nombres: $nombres, apellidos: $apellidos, nombreUsuario: $nombreUsuario, email: $email, phoneNumber: $phoneNumber, passwordHash: $passwordHash)';
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
                other.phoneNumber == phoneNumber) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nombres, apellidos,
      nombreUsuario, email, phoneNumber, passwordHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loggedIn,
    required TResult Function(String token) logoutRequested,
    required TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)
        register,
    required TResult Function() authenticationStatusChecked,
  }) {
    return register(id, nombres, apellidos, nombreUsuario, email, phoneNumber,
        passwordHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return register?.call(id, nombres, apellidos, nombreUsuario, email,
        phoneNumber, passwordHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult Function()? authenticationStatusChecked,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(id, nombres, apellidos, nombreUsuario, email, phoneNumber,
          passwordHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedIn value) loggedIn,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(Register value) register,
    required TResult Function(AuthenticationStatusChecked value)
        authenticationStatusChecked,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoggedIn value)? loggedIn,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(Register value)? register,
    TResult? Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedIn value)? loggedIn,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(Register value)? register,
    TResult Function(AuthenticationStatusChecked value)?
        authenticationStatusChecked,
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
      final String? phoneNumber,
      required final String passwordHash}) = _$RegisterImpl;

  int get id;
  String get nombres;
  String get apellidos;
  String get nombreUsuario;
  String get email;
  String? get phoneNumber;
  String get passwordHash;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
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
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationStatusCheckedImpl>
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
    return 'AuthenticationEvent.authenticationStatusChecked()';
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
    required TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)
        register,
    required TResult Function() authenticationStatusChecked,
  }) {
    return authenticationStatusChecked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loggedIn,
    TResult? Function(String token)? logoutRequested,
    TResult? Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
    TResult? Function()? authenticationStatusChecked,
  }) {
    return authenticationStatusChecked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loggedIn,
    TResult Function(String token)? logoutRequested,
    TResult Function(
            int id,
            String nombres,
            String apellidos,
            String nombreUsuario,
            String email,
            String? phoneNumber,
            String passwordHash)?
        register,
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
    required TResult Function(Register value) register,
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
    TResult? Function(Register value)? register,
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
    TResult Function(Register value)? register,
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

abstract class AuthenticationStatusChecked implements AuthenticationEvent {
  const factory AuthenticationStatusChecked() =
      _$AuthenticationStatusCheckedImpl;
}
