// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_position_variety_entity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PresentationPositionVarietyEntityRequest
    _$PresentationPositionVarietyEntityRequestFromJson(
        Map<String, dynamic> json) {
  return _PresentationPositionVarietyEntityRequest.fromJson(json);
}

/// @nodoc
mixin _$PresentationPositionVarietyEntityRequest {
  int? get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  String get hodgePlane => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationPositionVarietyEntityRequestCopyWith<
          PresentationPositionVarietyEntityRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationPositionVarietyEntityRequestCopyWith<$Res> {
  factory $PresentationPositionVarietyEntityRequestCopyWith(
          PresentationPositionVarietyEntityRequest value,
          $Res Function(PresentationPositionVarietyEntityRequest) then) =
      _$PresentationPositionVarietyEntityRequestCopyWithImpl<$Res,
          PresentationPositionVarietyEntityRequest>;
  @useResult
  $Res call(
      {int? id,
      String partographId,
      String hodgePlane,
      String position,
      DateTime time,
      String? userId});
}

/// @nodoc
class _$PresentationPositionVarietyEntityRequestCopyWithImpl<$Res,
        $Val extends PresentationPositionVarietyEntityRequest>
    implements $PresentationPositionVarietyEntityRequestCopyWith<$Res> {
  _$PresentationPositionVarietyEntityRequestCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      hodgePlane: null == hodgePlane
          ? _value.hodgePlane
          : hodgePlane // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresentationPositionVarietyEntityRequestImplCopyWith<$Res>
    implements $PresentationPositionVarietyEntityRequestCopyWith<$Res> {
  factory _$$PresentationPositionVarietyEntityRequestImplCopyWith(
          _$PresentationPositionVarietyEntityRequestImpl value,
          $Res Function(_$PresentationPositionVarietyEntityRequestImpl) then) =
      __$$PresentationPositionVarietyEntityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String partographId,
      String hodgePlane,
      String position,
      DateTime time,
      String? userId});
}

/// @nodoc
class __$$PresentationPositionVarietyEntityRequestImplCopyWithImpl<$Res>
    extends _$PresentationPositionVarietyEntityRequestCopyWithImpl<$Res,
        _$PresentationPositionVarietyEntityRequestImpl>
    implements _$$PresentationPositionVarietyEntityRequestImplCopyWith<$Res> {
  __$$PresentationPositionVarietyEntityRequestImplCopyWithImpl(
      _$PresentationPositionVarietyEntityRequestImpl _value,
      $Res Function(_$PresentationPositionVarietyEntityRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
    Object? userId = freezed,
  }) {
    return _then(_$PresentationPositionVarietyEntityRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      hodgePlane: null == hodgePlane
          ? _value.hodgePlane
          : hodgePlane // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresentationPositionVarietyEntityRequestImpl
    implements _PresentationPositionVarietyEntityRequest {
  const _$PresentationPositionVarietyEntityRequestImpl(
      {this.id,
      required this.partographId,
      required this.hodgePlane,
      required this.position,
      required this.time,
      this.userId});

  factory _$PresentationPositionVarietyEntityRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PresentationPositionVarietyEntityRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String partographId;
  @override
  final String hodgePlane;
  @override
  final String position;
  @override
  final DateTime time;
  @override
  final String? userId;

  @override
  String toString() {
    return 'PresentationPositionVarietyEntityRequest(id: $id, partographId: $partographId, hodgePlane: $hodgePlane, position: $position, time: $time, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationPositionVarietyEntityRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.hodgePlane, hodgePlane) ||
                other.hodgePlane == hodgePlane) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, partographId, hodgePlane, position, time, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationPositionVarietyEntityRequestImplCopyWith<
          _$PresentationPositionVarietyEntityRequestImpl>
      get copyWith =>
          __$$PresentationPositionVarietyEntityRequestImplCopyWithImpl<
              _$PresentationPositionVarietyEntityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresentationPositionVarietyEntityRequestImplToJson(
      this,
    );
  }
}

abstract class _PresentationPositionVarietyEntityRequest
    implements PresentationPositionVarietyEntityRequest {
  const factory _PresentationPositionVarietyEntityRequest(
      {final int? id,
      required final String partographId,
      required final String hodgePlane,
      required final String position,
      required final DateTime time,
      final String? userId}) = _$PresentationPositionVarietyEntityRequestImpl;

  factory _PresentationPositionVarietyEntityRequest.fromJson(
          Map<String, dynamic> json) =
      _$PresentationPositionVarietyEntityRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String get partographId;
  @override
  String get hodgePlane;
  @override
  String get position;
  @override
  DateTime get time;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$PresentationPositionVarietyEntityRequestImplCopyWith<
          _$PresentationPositionVarietyEntityRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
