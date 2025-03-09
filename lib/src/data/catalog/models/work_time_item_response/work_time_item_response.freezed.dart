// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkTimeItemResponse _$WorkTimeItemResponseFromJson(Map<String, dynamic> json) {
  return _WorkTimeItemResponse.fromJson(json);
}

/// @nodoc
mixin _$WorkTimeItemResponse {
  int get id => throw _privateConstructorUsedError;
  String get workTimeId => throw _privateConstructorUsedError;
  double get cervicalDilation => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  /// Serializes this WorkTimeItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkTimeItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkTimeItemResponseCopyWith<WorkTimeItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeItemResponseCopyWith<$Res> {
  factory $WorkTimeItemResponseCopyWith(WorkTimeItemResponse value,
          $Res Function(WorkTimeItemResponse) then) =
      _$WorkTimeItemResponseCopyWithImpl<$Res, WorkTimeItemResponse>;
  @useResult
  $Res call({int id, String workTimeId, double cervicalDilation, String time});
}

/// @nodoc
class _$WorkTimeItemResponseCopyWithImpl<$Res,
        $Val extends WorkTimeItemResponse>
    implements $WorkTimeItemResponseCopyWith<$Res> {
  _$WorkTimeItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkTimeItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workTimeId = null,
    Object? cervicalDilation = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workTimeId: null == workTimeId
          ? _value.workTimeId
          : workTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      cervicalDilation: null == cervicalDilation
          ? _value.cervicalDilation
          : cervicalDilation // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkTimeItemResponseImplCopyWith<$Res>
    implements $WorkTimeItemResponseCopyWith<$Res> {
  factory _$$WorkTimeItemResponseImplCopyWith(_$WorkTimeItemResponseImpl value,
          $Res Function(_$WorkTimeItemResponseImpl) then) =
      __$$WorkTimeItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String workTimeId, double cervicalDilation, String time});
}

/// @nodoc
class __$$WorkTimeItemResponseImplCopyWithImpl<$Res>
    extends _$WorkTimeItemResponseCopyWithImpl<$Res, _$WorkTimeItemResponseImpl>
    implements _$$WorkTimeItemResponseImplCopyWith<$Res> {
  __$$WorkTimeItemResponseImplCopyWithImpl(_$WorkTimeItemResponseImpl _value,
      $Res Function(_$WorkTimeItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkTimeItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workTimeId = null,
    Object? cervicalDilation = null,
    Object? time = null,
  }) {
    return _then(_$WorkTimeItemResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      workTimeId: null == workTimeId
          ? _value.workTimeId
          : workTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      cervicalDilation: null == cervicalDilation
          ? _value.cervicalDilation
          : cervicalDilation // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkTimeItemResponseImpl implements _WorkTimeItemResponse {
  const _$WorkTimeItemResponseImpl(
      {required this.id,
      required this.workTimeId,
      required this.cervicalDilation,
      required this.time});

  factory _$WorkTimeItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkTimeItemResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String workTimeId;
  @override
  final double cervicalDilation;
  @override
  final String time;

  @override
  String toString() {
    return 'WorkTimeItemResponse(id: $id, workTimeId: $workTimeId, cervicalDilation: $cervicalDilation, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTimeItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workTimeId, workTimeId) ||
                other.workTimeId == workTimeId) &&
            (identical(other.cervicalDilation, cervicalDilation) ||
                other.cervicalDilation == cervicalDilation) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, workTimeId, cervicalDilation, time);

  /// Create a copy of WorkTimeItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTimeItemResponseImplCopyWith<_$WorkTimeItemResponseImpl>
      get copyWith =>
          __$$WorkTimeItemResponseImplCopyWithImpl<_$WorkTimeItemResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkTimeItemResponseImplToJson(
      this,
    );
  }
}

abstract class _WorkTimeItemResponse implements WorkTimeItemResponse {
  const factory _WorkTimeItemResponse(
      {required final int id,
      required final String workTimeId,
      required final double cervicalDilation,
      required final String time}) = _$WorkTimeItemResponseImpl;

  factory _WorkTimeItemResponse.fromJson(Map<String, dynamic> json) =
      _$WorkTimeItemResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get workTimeId;
  @override
  double get cervicalDilation;
  @override
  String get time;

  /// Create a copy of WorkTimeItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkTimeItemResponseImplCopyWith<_$WorkTimeItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
