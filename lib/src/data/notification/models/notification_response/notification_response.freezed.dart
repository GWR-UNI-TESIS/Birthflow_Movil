// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponse {
  int get notificationId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get scheduledFor => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  String? get partographId => throw _privateConstructorUsedError;

  /// Serializes this NotificationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res, NotificationResponse>;
  @useResult
  $Res call(
      {int notificationId,
      String title,
      String message,
      DateTime scheduledFor,
      DateTime? createAt,
      String? partographId});
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res,
        $Val extends NotificationResponse>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? title = null,
    Object? message = null,
    Object? scheduledFor = null,
    Object? createAt = freezed,
    Object? partographId = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledFor: null == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partographId: freezed == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationResponseImplCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$$NotificationResponseImplCopyWith(_$NotificationResponseImpl value,
          $Res Function(_$NotificationResponseImpl) then) =
      __$$NotificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int notificationId,
      String title,
      String message,
      DateTime scheduledFor,
      DateTime? createAt,
      String? partographId});
}

/// @nodoc
class __$$NotificationResponseImplCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res, _$NotificationResponseImpl>
    implements _$$NotificationResponseImplCopyWith<$Res> {
  __$$NotificationResponseImplCopyWithImpl(_$NotificationResponseImpl _value,
      $Res Function(_$NotificationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? title = null,
    Object? message = null,
    Object? scheduledFor = null,
    Object? createAt = freezed,
    Object? partographId = freezed,
  }) {
    return _then(_$NotificationResponseImpl(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledFor: null == scheduledFor
          ? _value.scheduledFor
          : scheduledFor // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      partographId: freezed == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseImpl implements _NotificationResponse {
  const _$NotificationResponseImpl(
      {required this.notificationId,
      required this.title,
      required this.message,
      required this.scheduledFor,
      this.createAt,
      this.partographId});

  factory _$NotificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseImplFromJson(json);

  @override
  final int notificationId;
  @override
  final String title;
  @override
  final String message;
  @override
  final DateTime scheduledFor;
  @override
  final DateTime? createAt;
  @override
  final String? partographId;

  @override
  String toString() {
    return 'NotificationResponse(notificationId: $notificationId, title: $title, message: $message, scheduledFor: $scheduledFor, createAt: $createAt, partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.scheduledFor, scheduledFor) ||
                other.scheduledFor == scheduledFor) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, title, message,
      scheduledFor, createAt, partographId);

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseImplCopyWith<_$NotificationResponseImpl>
      get copyWith =>
          __$$NotificationResponseImplCopyWithImpl<_$NotificationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseImplToJson(
      this,
    );
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
      {required final int notificationId,
      required final String title,
      required final String message,
      required final DateTime scheduledFor,
      final DateTime? createAt,
      final String? partographId}) = _$NotificationResponseImpl;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseImpl.fromJson;

  @override
  int get notificationId;
  @override
  String get title;
  @override
  String get message;
  @override
  DateTime get scheduledFor;
  @override
  DateTime? get createAt;
  @override
  String? get partographId;

  /// Create a copy of NotificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationResponseImplCopyWith<_$NotificationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
