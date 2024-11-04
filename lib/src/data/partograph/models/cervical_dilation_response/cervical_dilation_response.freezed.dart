// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cervical_dilation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CervicalDilationResponse _$CervicalDilationResponseFromJson(
    Map<String, dynamic> json) {
  return _CervicalDilationResponse.fromJson(json);
}

/// @nodoc
mixin _$CervicalDilationResponse {
  int get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  DateTime get hour => throw _privateConstructorUsedError;
  bool get remOrRam => throw _privateConstructorUsedError;
  AlertCurvesResponse? get curves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CervicalDilationResponseCopyWith<CervicalDilationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CervicalDilationResponseCopyWith<$Res> {
  factory $CervicalDilationResponseCopyWith(CervicalDilationResponse value,
          $Res Function(CervicalDilationResponse) then) =
      _$CervicalDilationResponseCopyWithImpl<$Res, CervicalDilationResponse>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      AlertCurvesResponse? curves});

  $AlertCurvesResponseCopyWith<$Res>? get curves;
}

/// @nodoc
class _$CervicalDilationResponseCopyWithImpl<$Res,
        $Val extends CervicalDilationResponse>
    implements $CervicalDilationResponseCopyWith<$Res> {
  _$CervicalDilationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? curves = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as AlertCurvesResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertCurvesResponseCopyWith<$Res>? get curves {
    if (_value.curves == null) {
      return null;
    }

    return $AlertCurvesResponseCopyWith<$Res>(_value.curves!, (value) {
      return _then(_value.copyWith(curves: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CervicalDilationResponseImplCopyWith<$Res>
    implements $CervicalDilationResponseCopyWith<$Res> {
  factory _$$CervicalDilationResponseImplCopyWith(
          _$CervicalDilationResponseImpl value,
          $Res Function(_$CervicalDilationResponseImpl) then) =
      __$$CervicalDilationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      AlertCurvesResponse? curves});

  @override
  $AlertCurvesResponseCopyWith<$Res>? get curves;
}

/// @nodoc
class __$$CervicalDilationResponseImplCopyWithImpl<$Res>
    extends _$CervicalDilationResponseCopyWithImpl<$Res,
        _$CervicalDilationResponseImpl>
    implements _$$CervicalDilationResponseImplCopyWith<$Res> {
  __$$CervicalDilationResponseImplCopyWithImpl(
      _$CervicalDilationResponseImpl _value,
      $Res Function(_$CervicalDilationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? curves = freezed,
  }) {
    return _then(_$CervicalDilationResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as AlertCurvesResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CervicalDilationResponseImpl implements _CervicalDilationResponse {
  const _$CervicalDilationResponseImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam,
      this.curves});

  factory _$CervicalDilationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CervicalDilationResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String partographId;
  @override
  final double value;
  @override
  final DateTime hour;
  @override
  final bool remOrRam;
  @override
  final AlertCurvesResponse? curves;

  @override
  String toString() {
    return 'CervicalDilationResponse(id: $id, partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam, curves: $curves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalDilationResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam) &&
            (identical(other.curves, curves) || other.curves == curves));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, value, hour, remOrRam, curves);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CervicalDilationResponseImplCopyWith<_$CervicalDilationResponseImpl>
      get copyWith => __$$CervicalDilationResponseImplCopyWithImpl<
          _$CervicalDilationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CervicalDilationResponseImplToJson(
      this,
    );
  }
}

abstract class _CervicalDilationResponse implements CervicalDilationResponse {
  const factory _CervicalDilationResponse(
      {required final int id,
      required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam,
      final AlertCurvesResponse? curves}) = _$CervicalDilationResponseImpl;

  factory _CervicalDilationResponse.fromJson(Map<String, dynamic> json) =
      _$CervicalDilationResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get partographId;
  @override
  double get value;
  @override
  DateTime get hour;
  @override
  bool get remOrRam;
  @override
  AlertCurvesResponse? get curves;
  @override
  @JsonKey(ignore: true)
  _$$CervicalDilationResponseImplCopyWith<_$CervicalDilationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
