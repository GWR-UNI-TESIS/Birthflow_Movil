// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AccountInitialImplCopyWith<$Res> {
  factory _$$AccountInitialImplCopyWith(_$AccountInitialImpl value,
          $Res Function(_$AccountInitialImpl) then) =
      __$$AccountInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$AccountInitialImpl>
    implements _$$AccountInitialImplCopyWith<$Res> {
  __$$AccountInitialImplCopyWithImpl(
      _$AccountInitialImpl _value, $Res Function(_$AccountInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AccountInitialImpl implements AccountInitial {
  const _$AccountInitialImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AccountInitial implements ForgotPasswordState {
  const factory AccountInitial() = _$AccountInitialImpl;
}

/// @nodoc
abstract class _$$AccountLoadingImplCopyWith<$Res> {
  factory _$$AccountLoadingImplCopyWith(_$AccountLoadingImpl value,
          $Res Function(_$AccountLoadingImpl) then) =
      __$$AccountLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoadingImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$AccountLoadingImpl>
    implements _$$AccountLoadingImplCopyWith<$Res> {
  __$$AccountLoadingImplCopyWithImpl(
      _$AccountLoadingImpl _value, $Res Function(_$AccountLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AccountLoadingImpl implements AccountLoading {
  const _$AccountLoadingImpl();

  @override
  String toString() {
    return 'ForgotPasswordState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountLoading implements ForgotPasswordState {
  const factory AccountLoading() = _$AccountLoadingImpl;
}

/// @nodoc
abstract class _$$StepChangedImplCopyWith<$Res> {
  factory _$$StepChangedImplCopyWith(
          _$StepChangedImpl value, $Res Function(_$StepChangedImpl) then) =
      __$$StepChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int step});
}

/// @nodoc
class __$$StepChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$StepChangedImpl>
    implements _$$StepChangedImplCopyWith<$Res> {
  __$$StepChangedImplCopyWithImpl(
      _$StepChangedImpl _value, $Res Function(_$StepChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$StepChangedImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StepChangedImpl implements StepChanged {
  const _$StepChangedImpl({required this.step});

  @override
  final int step;

  @override
  String toString() {
    return 'ForgotPasswordState.stepChanged(step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepChangedImpl &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StepChangedImplCopyWith<_$StepChangedImpl> get copyWith =>
      __$$StepChangedImplCopyWithImpl<_$StepChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return stepChanged(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return stepChanged?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stepChanged != null) {
      return stepChanged(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return stepChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return stepChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (stepChanged != null) {
      return stepChanged(this);
    }
    return orElse();
  }
}

abstract class StepChanged implements ForgotPasswordState {
  const factory StepChanged({required final int step}) = _$StepChangedImpl;

  int get step;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StepChangedImplCopyWith<_$StepChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestResetCodeSuccessImplCopyWith<$Res> {
  factory _$$RequestResetCodeSuccessImplCopyWith(
          _$RequestResetCodeSuccessImpl value,
          $Res Function(_$RequestResetCodeSuccessImpl) then) =
      __$$RequestResetCodeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String message});
}

/// @nodoc
class __$$RequestResetCodeSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$RequestResetCodeSuccessImpl>
    implements _$$RequestResetCodeSuccessImplCopyWith<$Res> {
  __$$RequestResetCodeSuccessImplCopyWithImpl(
      _$RequestResetCodeSuccessImpl _value,
      $Res Function(_$RequestResetCodeSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
  }) {
    return _then(_$RequestResetCodeSuccessImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestResetCodeSuccessImpl implements RequestResetCodeSuccess {
  const _$RequestResetCodeSuccessImpl(
      {required this.user, required this.message});

  @override
  final User user;
  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordState.requestResetCodeSuccess(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestResetCodeSuccessImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestResetCodeSuccessImplCopyWith<_$RequestResetCodeSuccessImpl>
      get copyWith => __$$RequestResetCodeSuccessImplCopyWithImpl<
          _$RequestResetCodeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return requestResetCodeSuccess(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return requestResetCodeSuccess?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (requestResetCodeSuccess != null) {
      return requestResetCodeSuccess(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return requestResetCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return requestResetCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (requestResetCodeSuccess != null) {
      return requestResetCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class RequestResetCodeSuccess implements ForgotPasswordState {
  const factory RequestResetCodeSuccess(
      {required final User user,
      required final String message}) = _$RequestResetCodeSuccessImpl;

  User get user;
  String get message;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestResetCodeSuccessImplCopyWith<_$RequestResetCodeSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateOtpSuccessImplCopyWith<$Res> {
  factory _$$ValidateOtpSuccessImplCopyWith(_$ValidateOtpSuccessImpl value,
          $Res Function(_$ValidateOtpSuccessImpl) then) =
      __$$ValidateOtpSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionToken});
}

/// @nodoc
class __$$ValidateOtpSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ValidateOtpSuccessImpl>
    implements _$$ValidateOtpSuccessImplCopyWith<$Res> {
  __$$ValidateOtpSuccessImplCopyWithImpl(_$ValidateOtpSuccessImpl _value,
      $Res Function(_$ValidateOtpSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
  }) {
    return _then(_$ValidateOtpSuccessImpl(
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateOtpSuccessImpl implements ValidateOtpSuccess {
  const _$ValidateOtpSuccessImpl({required this.sessionToken});

  @override
  final String sessionToken;

  @override
  String toString() {
    return 'ForgotPasswordState.validateOtpSuccess(sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpSuccessImpl &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sessionToken);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpSuccessImplCopyWith<_$ValidateOtpSuccessImpl> get copyWith =>
      __$$ValidateOtpSuccessImplCopyWithImpl<_$ValidateOtpSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return validateOtpSuccess(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return validateOtpSuccess?.call(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (validateOtpSuccess != null) {
      return validateOtpSuccess(sessionToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return validateOtpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return validateOtpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (validateOtpSuccess != null) {
      return validateOtpSuccess(this);
    }
    return orElse();
  }
}

abstract class ValidateOtpSuccess implements ForgotPasswordState {
  const factory ValidateOtpSuccess({required final String sessionToken}) =
      _$ValidateOtpSuccessImpl;

  String get sessionToken;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateOtpSuccessImplCopyWith<_$ValidateOtpSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessImplCopyWith<$Res> {
  factory _$$ResetPasswordSuccessImplCopyWith(_$ResetPasswordSuccessImpl value,
          $Res Function(_$ResetPasswordSuccessImpl) then) =
      __$$ResetPasswordSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResetPasswordSuccessImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ResetPasswordSuccessImpl>
    implements _$$ResetPasswordSuccessImplCopyWith<$Res> {
  __$$ResetPasswordSuccessImplCopyWithImpl(_$ResetPasswordSuccessImpl _value,
      $Res Function(_$ResetPasswordSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResetPasswordSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordSuccessImpl implements ResetPasswordSuccess {
  const _$ResetPasswordSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordState.resetPasswordSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordSuccessImplCopyWith<_$ResetPasswordSuccessImpl>
      get copyWith =>
          __$$ResetPasswordSuccessImplCopyWithImpl<_$ResetPasswordSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return resetPasswordSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return resetPasswordSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccess implements ForgotPasswordState {
  const factory ResetPasswordSuccess({required final String message}) =
      _$ResetPasswordSuccessImpl;

  String get message;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordSuccessImplCopyWith<_$ResetPasswordSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountErrorImplCopyWith<$Res> {
  factory _$$AccountErrorImplCopyWith(
          _$AccountErrorImpl value, $Res Function(_$AccountErrorImpl) then) =
      __$$AccountErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AccountErrorImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$AccountErrorImpl>
    implements _$$AccountErrorImplCopyWith<$Res> {
  __$$AccountErrorImplCopyWithImpl(
      _$AccountErrorImpl _value, $Res Function(_$AccountErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AccountErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountErrorImpl implements AccountError {
  const _$AccountErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountErrorImplCopyWith<_$AccountErrorImpl> get copyWith =>
      __$$AccountErrorImplCopyWithImpl<_$AccountErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int step) stepChanged,
    required TResult Function(User user, String message)
        requestResetCodeSuccess,
    required TResult Function(String sessionToken) validateOtpSuccess,
    required TResult Function(String message) resetPasswordSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int step)? stepChanged,
    TResult? Function(User user, String message)? requestResetCodeSuccess,
    TResult? Function(String sessionToken)? validateOtpSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int step)? stepChanged,
    TResult Function(User user, String message)? requestResetCodeSuccess,
    TResult Function(String sessionToken)? validateOtpSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitial value) initial,
    required TResult Function(AccountLoading value) loading,
    required TResult Function(StepChanged value) stepChanged,
    required TResult Function(RequestResetCodeSuccess value)
        requestResetCodeSuccess,
    required TResult Function(ValidateOtpSuccess value) validateOtpSuccess,
    required TResult Function(ResetPasswordSuccess value) resetPasswordSuccess,
    required TResult Function(AccountError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitial value)? initial,
    TResult? Function(AccountLoading value)? loading,
    TResult? Function(StepChanged value)? stepChanged,
    TResult? Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult? Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult? Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult? Function(AccountError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitial value)? initial,
    TResult Function(AccountLoading value)? loading,
    TResult Function(StepChanged value)? stepChanged,
    TResult Function(RequestResetCodeSuccess value)? requestResetCodeSuccess,
    TResult Function(ValidateOtpSuccess value)? validateOtpSuccess,
    TResult Function(ResetPasswordSuccess value)? resetPasswordSuccess,
    TResult Function(AccountError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountError implements ForgotPasswordState {
  const factory AccountError({required final String message}) =
      _$AccountErrorImpl;

  String get message;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountErrorImplCopyWith<_$AccountErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
