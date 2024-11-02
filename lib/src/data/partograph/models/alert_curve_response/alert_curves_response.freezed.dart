// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_curves_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlertCurvesResponse _$AlertCurvesResponseFromJson(Map<String, dynamic> json) {
  return _AlertCurvesResponse.fromJson(json);
}

/// @nodoc
mixin _$AlertCurvesResponse {
  List<AlertCurveResponse>? get alertCurve =>
      throw _privateConstructorUsedError;
  List<AlertCurveResponse>? get newAlertCurve =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertCurvesResponseCopyWith<AlertCurvesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCurvesResponseCopyWith<$Res> {
  factory $AlertCurvesResponseCopyWith(
          AlertCurvesResponse value, $Res Function(AlertCurvesResponse) then) =
      _$AlertCurvesResponseCopyWithImpl<$Res, AlertCurvesResponse>;
  @useResult
  $Res call(
      {List<AlertCurveResponse>? alertCurve,
      List<AlertCurveResponse>? newAlertCurve});
}

/// @nodoc
class _$AlertCurvesResponseCopyWithImpl<$Res, $Val extends AlertCurvesResponse>
    implements $AlertCurvesResponseCopyWith<$Res> {
  _$AlertCurvesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertCurve = freezed,
    Object? newAlertCurve = freezed,
  }) {
    return _then(_value.copyWith(
      alertCurve: freezed == alertCurve
          ? _value.alertCurve
          : alertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurveResponse>?,
      newAlertCurve: freezed == newAlertCurve
          ? _value.newAlertCurve
          : newAlertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurveResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertCurvesResponseImplCopyWith<$Res>
    implements $AlertCurvesResponseCopyWith<$Res> {
  factory _$$AlertCurvesResponseImplCopyWith(_$AlertCurvesResponseImpl value,
          $Res Function(_$AlertCurvesResponseImpl) then) =
      __$$AlertCurvesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AlertCurveResponse>? alertCurve,
      List<AlertCurveResponse>? newAlertCurve});
}

/// @nodoc
class __$$AlertCurvesResponseImplCopyWithImpl<$Res>
    extends _$AlertCurvesResponseCopyWithImpl<$Res, _$AlertCurvesResponseImpl>
    implements _$$AlertCurvesResponseImplCopyWith<$Res> {
  __$$AlertCurvesResponseImplCopyWithImpl(_$AlertCurvesResponseImpl _value,
      $Res Function(_$AlertCurvesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertCurve = freezed,
    Object? newAlertCurve = freezed,
  }) {
    return _then(_$AlertCurvesResponseImpl(
      alertCurve: freezed == alertCurve
          ? _value._alertCurve
          : alertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurveResponse>?,
      newAlertCurve: freezed == newAlertCurve
          ? _value._newAlertCurve
          : newAlertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurveResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertCurvesResponseImpl implements _AlertCurvesResponse {
  const _$AlertCurvesResponseImpl(
      {final List<AlertCurveResponse>? alertCurve,
      final List<AlertCurveResponse>? newAlertCurve})
      : _alertCurve = alertCurve,
        _newAlertCurve = newAlertCurve;

  factory _$AlertCurvesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertCurvesResponseImplFromJson(json);

  final List<AlertCurveResponse>? _alertCurve;
  @override
  List<AlertCurveResponse>? get alertCurve {
    final value = _alertCurve;
    if (value == null) return null;
    if (_alertCurve is EqualUnmodifiableListView) return _alertCurve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AlertCurveResponse>? _newAlertCurve;
  @override
  List<AlertCurveResponse>? get newAlertCurve {
    final value = _newAlertCurve;
    if (value == null) return null;
    if (_newAlertCurve is EqualUnmodifiableListView) return _newAlertCurve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AlertCurvesResponse(alertCurve: $alertCurve, newAlertCurve: $newAlertCurve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertCurvesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._alertCurve, _alertCurve) &&
            const DeepCollectionEquality()
                .equals(other._newAlertCurve, _newAlertCurve));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alertCurve),
      const DeepCollectionEquality().hash(_newAlertCurve));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertCurvesResponseImplCopyWith<_$AlertCurvesResponseImpl> get copyWith =>
      __$$AlertCurvesResponseImplCopyWithImpl<_$AlertCurvesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertCurvesResponseImplToJson(
      this,
    );
  }
}

abstract class _AlertCurvesResponse implements AlertCurvesResponse {
  const factory _AlertCurvesResponse(
          {final List<AlertCurveResponse>? alertCurve,
          final List<AlertCurveResponse>? newAlertCurve}) =
      _$AlertCurvesResponseImpl;

  factory _AlertCurvesResponse.fromJson(Map<String, dynamic> json) =
      _$AlertCurvesResponseImpl.fromJson;

  @override
  List<AlertCurveResponse>? get alertCurve;
  @override
  List<AlertCurveResponse>? get newAlertCurve;
  @override
  @JsonKey(ignore: true)
  _$$AlertCurvesResponseImplCopyWith<_$AlertCurvesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
