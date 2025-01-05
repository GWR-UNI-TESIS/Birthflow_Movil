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
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestResetCode,
    required TResult Function(String userId, String otpCode) validateOtp,
    required TResult Function(String userId, String otpCode, String newPassword)
        resetPassword,
    required TResult Function(int step) stepChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestResetCode,
    TResult? Function(String userId, String otpCode)? validateOtp,
    TResult? Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult? Function(int step)? stepChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestResetCode,
    TResult Function(String userId, String otpCode)? validateOtp,
    TResult Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult Function(int step)? stepChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestResetCodeEvent value) requestResetCode,
    required TResult Function(ValidateOtpEvent value) validateOtp,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(ResetPasswordStepChangeEvent value) stepChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestResetCodeEvent value)? requestResetCode,
    TResult? Function(ValidateOtpEvent value)? validateOtp,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(ResetPasswordStepChangeEvent value)? stepChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestResetCodeEvent value)? requestResetCode,
    TResult Function(ValidateOtpEvent value)? validateOtp,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(ResetPasswordStepChangeEvent value)? stepChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestResetCodeEventImplCopyWith<$Res> {
  factory _$$RequestResetCodeEventImplCopyWith(
          _$RequestResetCodeEventImpl value,
          $Res Function(_$RequestResetCodeEventImpl) then) =
      __$$RequestResetCodeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RequestResetCodeEventImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$RequestResetCodeEventImpl>
    implements _$$RequestResetCodeEventImplCopyWith<$Res> {
  __$$RequestResetCodeEventImplCopyWithImpl(_$RequestResetCodeEventImpl _value,
      $Res Function(_$RequestResetCodeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RequestResetCodeEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestResetCodeEventImpl implements RequestResetCodeEvent {
  const _$RequestResetCodeEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.requestResetCode(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestResetCodeEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestResetCodeEventImplCopyWith<_$RequestResetCodeEventImpl>
      get copyWith => __$$RequestResetCodeEventImplCopyWithImpl<
          _$RequestResetCodeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestResetCode,
    required TResult Function(String userId, String otpCode) validateOtp,
    required TResult Function(String userId, String otpCode, String newPassword)
        resetPassword,
    required TResult Function(int step) stepChange,
  }) {
    return requestResetCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestResetCode,
    TResult? Function(String userId, String otpCode)? validateOtp,
    TResult? Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult? Function(int step)? stepChange,
  }) {
    return requestResetCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestResetCode,
    TResult Function(String userId, String otpCode)? validateOtp,
    TResult Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult Function(int step)? stepChange,
    required TResult orElse(),
  }) {
    if (requestResetCode != null) {
      return requestResetCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestResetCodeEvent value) requestResetCode,
    required TResult Function(ValidateOtpEvent value) validateOtp,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(ResetPasswordStepChangeEvent value) stepChange,
  }) {
    return requestResetCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestResetCodeEvent value)? requestResetCode,
    TResult? Function(ValidateOtpEvent value)? validateOtp,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(ResetPasswordStepChangeEvent value)? stepChange,
  }) {
    return requestResetCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestResetCodeEvent value)? requestResetCode,
    TResult Function(ValidateOtpEvent value)? validateOtp,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(ResetPasswordStepChangeEvent value)? stepChange,
    required TResult orElse(),
  }) {
    if (requestResetCode != null) {
      return requestResetCode(this);
    }
    return orElse();
  }
}

abstract class RequestResetCodeEvent implements ForgotPasswordEvent {
  const factory RequestResetCodeEvent({required final String email}) =
      _$RequestResetCodeEventImpl;

  String get email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestResetCodeEventImplCopyWith<_$RequestResetCodeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateOtpEventImplCopyWith<$Res> {
  factory _$$ValidateOtpEventImplCopyWith(_$ValidateOtpEventImpl value,
          $Res Function(_$ValidateOtpEventImpl) then) =
      __$$ValidateOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String otpCode});
}

/// @nodoc
class __$$ValidateOtpEventImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ValidateOtpEventImpl>
    implements _$$ValidateOtpEventImplCopyWith<$Res> {
  __$$ValidateOtpEventImplCopyWithImpl(_$ValidateOtpEventImpl _value,
      $Res Function(_$ValidateOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otpCode = null,
  }) {
    return _then(_$ValidateOtpEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateOtpEventImpl implements ValidateOtpEvent {
  const _$ValidateOtpEventImpl({required this.userId, required this.otpCode});

  @override
  final String userId;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent.validateOtp(userId: $userId, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, otpCode);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpEventImplCopyWith<_$ValidateOtpEventImpl> get copyWith =>
      __$$ValidateOtpEventImplCopyWithImpl<_$ValidateOtpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestResetCode,
    required TResult Function(String userId, String otpCode) validateOtp,
    required TResult Function(String userId, String otpCode, String newPassword)
        resetPassword,
    required TResult Function(int step) stepChange,
  }) {
    return validateOtp(userId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestResetCode,
    TResult? Function(String userId, String otpCode)? validateOtp,
    TResult? Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult? Function(int step)? stepChange,
  }) {
    return validateOtp?.call(userId, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestResetCode,
    TResult Function(String userId, String otpCode)? validateOtp,
    TResult Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult Function(int step)? stepChange,
    required TResult orElse(),
  }) {
    if (validateOtp != null) {
      return validateOtp(userId, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestResetCodeEvent value) requestResetCode,
    required TResult Function(ValidateOtpEvent value) validateOtp,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(ResetPasswordStepChangeEvent value) stepChange,
  }) {
    return validateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestResetCodeEvent value)? requestResetCode,
    TResult? Function(ValidateOtpEvent value)? validateOtp,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(ResetPasswordStepChangeEvent value)? stepChange,
  }) {
    return validateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestResetCodeEvent value)? requestResetCode,
    TResult Function(ValidateOtpEvent value)? validateOtp,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(ResetPasswordStepChangeEvent value)? stepChange,
    required TResult orElse(),
  }) {
    if (validateOtp != null) {
      return validateOtp(this);
    }
    return orElse();
  }
}

abstract class ValidateOtpEvent implements ForgotPasswordEvent {
  const factory ValidateOtpEvent(
      {required final String userId,
      required final String otpCode}) = _$ValidateOtpEventImpl;

  String get userId;
  String get otpCode;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateOtpEventImplCopyWith<_$ValidateOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEventImplCopyWith<$Res> {
  factory _$$ResetPasswordEventImplCopyWith(_$ResetPasswordEventImpl value,
          $Res Function(_$ResetPasswordEventImpl) then) =
      __$$ResetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String otpCode, String newPassword});
}

/// @nodoc
class __$$ResetPasswordEventImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ResetPasswordEventImpl>
    implements _$$ResetPasswordEventImplCopyWith<$Res> {
  __$$ResetPasswordEventImplCopyWithImpl(_$ResetPasswordEventImpl _value,
      $Res Function(_$ResetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otpCode = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEventImpl implements ResetPasswordEvent {
  const _$ResetPasswordEventImpl(
      {required this.userId, required this.otpCode, required this.newPassword});

  @override
  final String userId;
  @override
  final String otpCode;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ForgotPasswordEvent.resetPassword(userId: $userId, otpCode: $otpCode, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, otpCode, newPassword);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      __$$ResetPasswordEventImplCopyWithImpl<_$ResetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestResetCode,
    required TResult Function(String userId, String otpCode) validateOtp,
    required TResult Function(String userId, String otpCode, String newPassword)
        resetPassword,
    required TResult Function(int step) stepChange,
  }) {
    return resetPassword(userId, otpCode, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestResetCode,
    TResult? Function(String userId, String otpCode)? validateOtp,
    TResult? Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult? Function(int step)? stepChange,
  }) {
    return resetPassword?.call(userId, otpCode, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestResetCode,
    TResult Function(String userId, String otpCode)? validateOtp,
    TResult Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult Function(int step)? stepChange,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(userId, otpCode, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestResetCodeEvent value) requestResetCode,
    required TResult Function(ValidateOtpEvent value) validateOtp,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(ResetPasswordStepChangeEvent value) stepChange,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestResetCodeEvent value)? requestResetCode,
    TResult? Function(ValidateOtpEvent value)? validateOtp,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(ResetPasswordStepChangeEvent value)? stepChange,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestResetCodeEvent value)? requestResetCode,
    TResult Function(ValidateOtpEvent value)? validateOtp,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(ResetPasswordStepChangeEvent value)? stepChange,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordEvent implements ForgotPasswordEvent {
  const factory ResetPasswordEvent(
      {required final String userId,
      required final String otpCode,
      required final String newPassword}) = _$ResetPasswordEventImpl;

  String get userId;
  String get otpCode;
  String get newPassword;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordStepChangeEventImplCopyWith<$Res> {
  factory _$$ResetPasswordStepChangeEventImplCopyWith(
          _$ResetPasswordStepChangeEventImpl value,
          $Res Function(_$ResetPasswordStepChangeEventImpl) then) =
      __$$ResetPasswordStepChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int step});
}

/// @nodoc
class __$$ResetPasswordStepChangeEventImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ResetPasswordStepChangeEventImpl>
    implements _$$ResetPasswordStepChangeEventImplCopyWith<$Res> {
  __$$ResetPasswordStepChangeEventImplCopyWithImpl(
      _$ResetPasswordStepChangeEventImpl _value,
      $Res Function(_$ResetPasswordStepChangeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
  }) {
    return _then(_$ResetPasswordStepChangeEventImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ResetPasswordStepChangeEventImpl
    implements ResetPasswordStepChangeEvent {
  const _$ResetPasswordStepChangeEventImpl({required this.step});

  @override
  final int step;

  @override
  String toString() {
    return 'ForgotPasswordEvent.stepChange(step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordStepChangeEventImpl &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordStepChangeEventImplCopyWith<
          _$ResetPasswordStepChangeEventImpl>
      get copyWith => __$$ResetPasswordStepChangeEventImplCopyWithImpl<
          _$ResetPasswordStepChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) requestResetCode,
    required TResult Function(String userId, String otpCode) validateOtp,
    required TResult Function(String userId, String otpCode, String newPassword)
        resetPassword,
    required TResult Function(int step) stepChange,
  }) {
    return stepChange(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? requestResetCode,
    TResult? Function(String userId, String otpCode)? validateOtp,
    TResult? Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult? Function(int step)? stepChange,
  }) {
    return stepChange?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? requestResetCode,
    TResult Function(String userId, String otpCode)? validateOtp,
    TResult Function(String userId, String otpCode, String newPassword)?
        resetPassword,
    TResult Function(int step)? stepChange,
    required TResult orElse(),
  }) {
    if (stepChange != null) {
      return stepChange(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestResetCodeEvent value) requestResetCode,
    required TResult Function(ValidateOtpEvent value) validateOtp,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(ResetPasswordStepChangeEvent value) stepChange,
  }) {
    return stepChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestResetCodeEvent value)? requestResetCode,
    TResult? Function(ValidateOtpEvent value)? validateOtp,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(ResetPasswordStepChangeEvent value)? stepChange,
  }) {
    return stepChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestResetCodeEvent value)? requestResetCode,
    TResult Function(ValidateOtpEvent value)? validateOtp,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(ResetPasswordStepChangeEvent value)? stepChange,
    required TResult orElse(),
  }) {
    if (stepChange != null) {
      return stepChange(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordStepChangeEvent implements ForgotPasswordEvent {
  const factory ResetPasswordStepChangeEvent({required final int step}) =
      _$ResetPasswordStepChangeEventImpl;

  int get step;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordStepChangeEventImplCopyWith<
          _$ResetPasswordStepChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
