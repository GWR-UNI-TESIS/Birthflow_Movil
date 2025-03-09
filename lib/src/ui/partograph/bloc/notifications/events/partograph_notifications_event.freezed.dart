// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_notifications_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartographNotificationEvent {
  String get partographId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PartographNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographNotificationEventCopyWith<PartographNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographNotificationEventCopyWith<$Res> {
  factory $PartographNotificationEventCopyWith(
          PartographNotificationEvent value,
          $Res Function(PartographNotificationEvent) then) =
      _$PartographNotificationEventCopyWithImpl<$Res,
          PartographNotificationEvent>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class _$PartographNotificationEventCopyWithImpl<$Res,
        $Val extends PartographNotificationEvent>
    implements $PartographNotificationEventCopyWith<$Res> {
  _$PartographNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationsImplCopyWith<$Res>
    implements $PartographNotificationEventCopyWith<$Res> {
  factory _$$GetNotificationsImplCopyWith(_$GetNotificationsImpl value,
          $Res Function(_$GetNotificationsImpl) then) =
      __$$GetNotificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$GetNotificationsImplCopyWithImpl<$Res>
    extends _$PartographNotificationEventCopyWithImpl<$Res,
        _$GetNotificationsImpl>
    implements _$$GetNotificationsImplCopyWith<$Res> {
  __$$GetNotificationsImplCopyWithImpl(_$GetNotificationsImpl _value,
      $Res Function(_$GetNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$GetNotificationsImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNotificationsImpl implements GetNotifications {
  const _$GetNotificationsImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographNotificationEvent.getNotifications(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of PartographNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      __$$GetNotificationsImplCopyWithImpl<_$GetNotificationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) getNotifications,
  }) {
    return getNotifications(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? getNotifications,
  }) {
    return getNotifications?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotifications value) getNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotifications value)? getNotifications,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements PartographNotificationEvent {
  const factory GetNotifications({required final String partographId}) =
      _$GetNotificationsImpl;

  @override
  String get partographId;

  /// Create a copy of PartographNotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsImplCopyWith<_$GetNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
