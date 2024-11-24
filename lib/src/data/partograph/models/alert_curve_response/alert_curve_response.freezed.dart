// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_curve_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertCurveResponse _$AlertCurveResponseFromJson(Map<String, dynamic> json) {
  return _AlertCurveResponse.fromJson(json);
}

/// @nodoc
mixin _$AlertCurveResponse {
  double get cervicalDilation => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this AlertCurveResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertCurveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertCurveResponseCopyWith<AlertCurveResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCurveResponseCopyWith<$Res> {
  factory $AlertCurveResponseCopyWith(
          AlertCurveResponse value, $Res Function(AlertCurveResponse) then) =
      _$AlertCurveResponseCopyWithImpl<$Res, AlertCurveResponse>;
  @useResult
  $Res call({double cervicalDilation, DateTime time});
}

/// @nodoc
class _$AlertCurveResponseCopyWithImpl<$Res, $Val extends AlertCurveResponse>
    implements $AlertCurveResponseCopyWith<$Res> {
  _$AlertCurveResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertCurveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cervicalDilation = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      cervicalDilation: null == cervicalDilation
          ? _value.cervicalDilation
          : cervicalDilation // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertCurveResponseImplCopyWith<$Res>
    implements $AlertCurveResponseCopyWith<$Res> {
  factory _$$AlertCurveResponseImplCopyWith(_$AlertCurveResponseImpl value,
          $Res Function(_$AlertCurveResponseImpl) then) =
      __$$AlertCurveResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double cervicalDilation, DateTime time});
}

/// @nodoc
class __$$AlertCurveResponseImplCopyWithImpl<$Res>
    extends _$AlertCurveResponseCopyWithImpl<$Res, _$AlertCurveResponseImpl>
    implements _$$AlertCurveResponseImplCopyWith<$Res> {
  __$$AlertCurveResponseImplCopyWithImpl(_$AlertCurveResponseImpl _value,
      $Res Function(_$AlertCurveResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertCurveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cervicalDilation = null,
    Object? time = null,
  }) {
    return _then(_$AlertCurveResponseImpl(
      cervicalDilation: null == cervicalDilation
          ? _value.cervicalDilation
          : cervicalDilation // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertCurveResponseImpl implements _AlertCurveResponse {
  const _$AlertCurveResponseImpl(
      {required this.cervicalDilation, required this.time});

  factory _$AlertCurveResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertCurveResponseImplFromJson(json);

  @override
  final double cervicalDilation;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'AlertCurveResponse(cervicalDilation: $cervicalDilation, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertCurveResponseImpl &&
            (identical(other.cervicalDilation, cervicalDilation) ||
                other.cervicalDilation == cervicalDilation) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cervicalDilation, time);

  /// Create a copy of AlertCurveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertCurveResponseImplCopyWith<_$AlertCurveResponseImpl> get copyWith =>
      __$$AlertCurveResponseImplCopyWithImpl<_$AlertCurveResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertCurveResponseImplToJson(
      this,
    );
  }
}

abstract class _AlertCurveResponse implements AlertCurveResponse {
  const factory _AlertCurveResponse(
      {required final double cervicalDilation,
      required final DateTime time}) = _$AlertCurveResponseImpl;

  factory _AlertCurveResponse.fromJson(Map<String, dynamic> json) =
      _$AlertCurveResponseImpl.fromJson;

  @override
  double get cervicalDilation;
  @override
  DateTime get time;

  /// Create a copy of AlertCurveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertCurveResponseImplCopyWith<_$AlertCurveResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
