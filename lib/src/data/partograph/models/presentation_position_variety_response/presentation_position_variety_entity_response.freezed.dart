// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_position_variety_entity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PresentationPositionVarietyEntityResponse
    _$PresentationPositionVarietyEntityResponseFromJson(
        Map<String, dynamic> json) {
  return _PresentationPositionVarietyEntityResponse.fromJson(json);
}

/// @nodoc
mixin _$PresentationPositionVarietyEntityResponse {
  int? get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  int get hodgePlane => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresentationPositionVarietyEntityResponseCopyWith<
          PresentationPositionVarietyEntityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationPositionVarietyEntityResponseCopyWith<$Res> {
  factory $PresentationPositionVarietyEntityResponseCopyWith(
          PresentationPositionVarietyEntityResponse value,
          $Res Function(PresentationPositionVarietyEntityResponse) then) =
      _$PresentationPositionVarietyEntityResponseCopyWithImpl<$Res,
          PresentationPositionVarietyEntityResponse>;
  @useResult
  $Res call(
      {int? id,
      String partographId,
      int hodgePlane,
      int position,
      DateTime time});
}

/// @nodoc
class _$PresentationPositionVarietyEntityResponseCopyWithImpl<$Res,
        $Val extends PresentationPositionVarietyEntityResponse>
    implements $PresentationPositionVarietyEntityResponseCopyWith<$Res> {
  _$PresentationPositionVarietyEntityResponseCopyWithImpl(
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
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresentationPositionVarietyEntityResponseImplCopyWith<$Res>
    implements $PresentationPositionVarietyEntityResponseCopyWith<$Res> {
  factory _$$PresentationPositionVarietyEntityResponseImplCopyWith(
          _$PresentationPositionVarietyEntityResponseImpl value,
          $Res Function(_$PresentationPositionVarietyEntityResponseImpl) then) =
      __$$PresentationPositionVarietyEntityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String partographId,
      int hodgePlane,
      int position,
      DateTime time});
}

/// @nodoc
class __$$PresentationPositionVarietyEntityResponseImplCopyWithImpl<$Res>
    extends _$PresentationPositionVarietyEntityResponseCopyWithImpl<$Res,
        _$PresentationPositionVarietyEntityResponseImpl>
    implements _$$PresentationPositionVarietyEntityResponseImplCopyWith<$Res> {
  __$$PresentationPositionVarietyEntityResponseImplCopyWithImpl(
      _$PresentationPositionVarietyEntityResponseImpl _value,
      $Res Function(_$PresentationPositionVarietyEntityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
  }) {
    return _then(_$PresentationPositionVarietyEntityResponseImpl(
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
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresentationPositionVarietyEntityResponseImpl
    implements _PresentationPositionVarietyEntityResponse {
  const _$PresentationPositionVarietyEntityResponseImpl(
      {this.id,
      required this.partographId,
      required this.hodgePlane,
      required this.position,
      required this.time});

  factory _$PresentationPositionVarietyEntityResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PresentationPositionVarietyEntityResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String partographId;
  @override
  final int hodgePlane;
  @override
  final int position;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PresentationPositionVarietyEntityResponse(id: $id, partographId: $partographId, hodgePlane: $hodgePlane, position: $position, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationPositionVarietyEntityResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.hodgePlane, hodgePlane) ||
                other.hodgePlane == hodgePlane) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, hodgePlane, position, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationPositionVarietyEntityResponseImplCopyWith<
          _$PresentationPositionVarietyEntityResponseImpl>
      get copyWith =>
          __$$PresentationPositionVarietyEntityResponseImplCopyWithImpl<
                  _$PresentationPositionVarietyEntityResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresentationPositionVarietyEntityResponseImplToJson(
      this,
    );
  }
}

abstract class _PresentationPositionVarietyEntityResponse
    implements PresentationPositionVarietyEntityResponse {
  const factory _PresentationPositionVarietyEntityResponse(
          {final int? id,
          required final String partographId,
          required final int hodgePlane,
          required final int position,
          required final DateTime time}) =
      _$PresentationPositionVarietyEntityResponseImpl;

  factory _PresentationPositionVarietyEntityResponse.fromJson(
          Map<String, dynamic> json) =
      _$PresentationPositionVarietyEntityResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String get partographId;
  @override
  int get hodgePlane;
  @override
  int get position;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$PresentationPositionVarietyEntityResponseImplCopyWith<
          _$PresentationPositionVarietyEntityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
