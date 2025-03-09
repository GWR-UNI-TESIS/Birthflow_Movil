// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationRegistering value) registering,
    required TResult Function(NotificationSuccess value) success,
    required TResult Function(NotificationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationRegistering value)? registering,
    TResult? Function(NotificationSuccess value)? success,
    TResult? Function(NotificationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationRegistering value)? registering,
    TResult Function(NotificationSuccess value)? success,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationInitialImplCopyWith<$Res> {
  factory _$$NotificationInitialImplCopyWith(_$NotificationInitialImpl value,
          $Res Function(_$NotificationInitialImpl) then) =
      __$$NotificationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationInitialImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationInitialImpl>
    implements _$$NotificationInitialImplCopyWith<$Res> {
  __$$NotificationInitialImplCopyWithImpl(_$NotificationInitialImpl _value,
      $Res Function(_$NotificationInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationInitialImpl implements NotificationInitial {
  const _$NotificationInitialImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? success,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationRegistering value) registering,
    required TResult Function(NotificationSuccess value) success,
    required TResult Function(NotificationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationRegistering value)? registering,
    TResult? Function(NotificationSuccess value)? success,
    TResult? Function(NotificationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationRegistering value)? registering,
    TResult Function(NotificationSuccess value)? success,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NotificationInitial implements NotificationState {
  const factory NotificationInitial() = _$NotificationInitialImpl;
}

/// @nodoc
abstract class _$$NotificationRegisteringImplCopyWith<$Res> {
  factory _$$NotificationRegisteringImplCopyWith(
          _$NotificationRegisteringImpl value,
          $Res Function(_$NotificationRegisteringImpl) then) =
      __$$NotificationRegisteringImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationRegisteringImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationRegisteringImpl>
    implements _$$NotificationRegisteringImplCopyWith<$Res> {
  __$$NotificationRegisteringImplCopyWithImpl(
      _$NotificationRegisteringImpl _value,
      $Res Function(_$NotificationRegisteringImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationRegisteringImpl implements NotificationRegistering {
  const _$NotificationRegisteringImpl();

  @override
  String toString() {
    return 'NotificationState.registering()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationRegisteringImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return registering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return registering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationRegistering value) registering,
    required TResult Function(NotificationSuccess value) success,
    required TResult Function(NotificationError value) error,
  }) {
    return registering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationRegistering value)? registering,
    TResult? Function(NotificationSuccess value)? success,
    TResult? Function(NotificationError value)? error,
  }) {
    return registering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationRegistering value)? registering,
    TResult Function(NotificationSuccess value)? success,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(this);
    }
    return orElse();
  }
}

abstract class NotificationRegistering implements NotificationState {
  const factory NotificationRegistering() = _$NotificationRegisteringImpl;
}

/// @nodoc
abstract class _$$NotificationSuccessImplCopyWith<$Res> {
  factory _$$NotificationSuccessImplCopyWith(_$NotificationSuccessImpl value,
          $Res Function(_$NotificationSuccessImpl) then) =
      __$$NotificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationSuccessImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationSuccessImpl>
    implements _$$NotificationSuccessImplCopyWith<$Res> {
  __$$NotificationSuccessImplCopyWithImpl(_$NotificationSuccessImpl _value,
      $Res Function(_$NotificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationSuccessImpl implements NotificationSuccess {
  const _$NotificationSuccessImpl();

  @override
  String toString() {
    return 'NotificationState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationRegistering value) registering,
    required TResult Function(NotificationSuccess value) success,
    required TResult Function(NotificationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationRegistering value)? registering,
    TResult? Function(NotificationSuccess value)? success,
    TResult? Function(NotificationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationRegistering value)? registering,
    TResult Function(NotificationSuccess value)? success,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NotificationSuccess implements NotificationState {
  const factory NotificationSuccess() = _$NotificationSuccessImpl;
}

/// @nodoc
abstract class _$$NotificationErrorImplCopyWith<$Res> {
  factory _$$NotificationErrorImplCopyWith(_$NotificationErrorImpl value,
          $Res Function(_$NotificationErrorImpl) then) =
      __$$NotificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationErrorImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationErrorImpl>
    implements _$$NotificationErrorImplCopyWith<$Res> {
  __$$NotificationErrorImplCopyWithImpl(_$NotificationErrorImpl _value,
      $Res Function(_$NotificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationErrorImpl implements NotificationError {
  const _$NotificationErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      __$$NotificationErrorImplCopyWithImpl<_$NotificationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? success,
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
    required TResult Function(NotificationInitial value) initial,
    required TResult Function(NotificationRegistering value) registering,
    required TResult Function(NotificationSuccess value) success,
    required TResult Function(NotificationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationInitial value)? initial,
    TResult? Function(NotificationRegistering value)? registering,
    TResult? Function(NotificationSuccess value)? success,
    TResult? Function(NotificationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationInitial value)? initial,
    TResult Function(NotificationRegistering value)? registering,
    TResult Function(NotificationSuccess value)? success,
    TResult Function(NotificationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NotificationError implements NotificationState {
  const factory NotificationError(final String message) =
      _$NotificationErrorImpl;

  String get message;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationErrorImplCopyWith<_$NotificationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
