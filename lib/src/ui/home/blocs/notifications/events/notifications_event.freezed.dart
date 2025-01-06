// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotifications,
    required TResult Function(Notification notification) addNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotifications,
    TResult? Function(Notification notification)? addNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotifications,
    TResult Function(Notification notification)? addNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotifications value) loadNotifications,
    required TResult Function(AddNotification value) addNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotifications value)? loadNotifications,
    TResult? Function(AddNotification value)? addNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotifications value)? loadNotifications,
    TResult Function(AddNotification value)? addNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadNotificationsImplCopyWith<$Res> {
  factory _$$LoadNotificationsImplCopyWith(_$LoadNotificationsImpl value,
          $Res Function(_$LoadNotificationsImpl) then) =
      __$$LoadNotificationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$LoadNotificationsImpl>
    implements _$$LoadNotificationsImplCopyWith<$Res> {
  __$$LoadNotificationsImplCopyWithImpl(_$LoadNotificationsImpl _value,
      $Res Function(_$LoadNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNotificationsImpl implements LoadNotifications {
  const _$LoadNotificationsImpl();

  @override
  String toString() {
    return 'NotificationsEvent.loadNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNotificationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotifications,
    required TResult Function(Notification notification) addNotification,
  }) {
    return loadNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotifications,
    TResult? Function(Notification notification)? addNotification,
  }) {
    return loadNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotifications,
    TResult Function(Notification notification)? addNotification,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotifications value) loadNotifications,
    required TResult Function(AddNotification value) addNotification,
  }) {
    return loadNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotifications value)? loadNotifications,
    TResult? Function(AddNotification value)? addNotification,
  }) {
    return loadNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotifications value)? loadNotifications,
    TResult Function(AddNotification value)? addNotification,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications(this);
    }
    return orElse();
  }
}

abstract class LoadNotifications implements NotificationsEvent {
  const factory LoadNotifications() = _$LoadNotificationsImpl;
}

/// @nodoc
abstract class _$$AddNotificationImplCopyWith<$Res> {
  factory _$$AddNotificationImplCopyWith(_$AddNotificationImpl value,
          $Res Function(_$AddNotificationImpl) then) =
      __$$AddNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Notification notification});
}

/// @nodoc
class __$$AddNotificationImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$AddNotificationImpl>
    implements _$$AddNotificationImplCopyWith<$Res> {
  __$$AddNotificationImplCopyWithImpl(
      _$AddNotificationImpl _value, $Res Function(_$AddNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$AddNotificationImpl(
      null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }
}

/// @nodoc

class _$AddNotificationImpl implements AddNotification {
  const _$AddNotificationImpl(this.notification);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'NotificationsEvent.addNotification(notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNotificationImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNotificationImplCopyWith<_$AddNotificationImpl> get copyWith =>
      __$$AddNotificationImplCopyWithImpl<_$AddNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotifications,
    required TResult Function(Notification notification) addNotification,
  }) {
    return addNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotifications,
    TResult? Function(Notification notification)? addNotification,
  }) {
    return addNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotifications,
    TResult Function(Notification notification)? addNotification,
    required TResult orElse(),
  }) {
    if (addNotification != null) {
      return addNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotifications value) loadNotifications,
    required TResult Function(AddNotification value) addNotification,
  }) {
    return addNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotifications value)? loadNotifications,
    TResult? Function(AddNotification value)? addNotification,
  }) {
    return addNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotifications value)? loadNotifications,
    TResult Function(AddNotification value)? addNotification,
    required TResult orElse(),
  }) {
    if (addNotification != null) {
      return addNotification(this);
    }
    return orElse();
  }
}

abstract class AddNotification implements NotificationsEvent {
  const factory AddNotification(final Notification notification) =
      _$AddNotificationImpl;

  Notification get notification;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNotificationImplCopyWith<_$AddNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
