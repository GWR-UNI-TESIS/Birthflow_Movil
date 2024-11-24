// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographResponse _$PartographResponseFromJson(Map<String, dynamic> json) {
  return _PartographResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographResponse {
  String get partographId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get recordName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get observation => throw _privateConstructorUsedError;
  String get workTime => throw _privateConstructorUsedError;
  List<CervicalDilationResponse>? get cervicalDilations =>
      throw _privateConstructorUsedError;
  List<MedicalSurveillanceTableResponse>? get medicalSurveillanceTable =>
      throw _privateConstructorUsedError;
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarieties => throw _privateConstructorUsedError;
  List<FetalHeartRateResponse>? get fetalHeartRates =>
      throw _privateConstructorUsedError;
  List<ContractionFrequencyResponse>? get contractionFrequencies =>
      throw _privateConstructorUsedError;
  PartographStateResponse? get partographState =>
      throw _privateConstructorUsedError;
  AlertCurvesResponse? get curves => throw _privateConstructorUsedError;

  /// Serializes this PartographResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographResponseCopyWith<PartographResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographResponseCopyWith<$Res> {
  factory $PartographResponseCopyWith(
          PartographResponse value, $Res Function(PartographResponse) then) =
      _$PartographResponseCopyWithImpl<$Res, PartographResponse>;
  @useResult
  $Res call(
      {String partographId,
      String name,
      String recordName,
      DateTime date,
      String observation,
      String workTime,
      List<CervicalDilationResponse>? cervicalDilations,
      List<MedicalSurveillanceTableResponse>? medicalSurveillanceTable,
      List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarieties,
      List<FetalHeartRateResponse>? fetalHeartRates,
      List<ContractionFrequencyResponse>? contractionFrequencies,
      PartographStateResponse? partographState,
      AlertCurvesResponse? curves});

  $PartographStateResponseCopyWith<$Res>? get partographState;
  $AlertCurvesResponseCopyWith<$Res>? get curves;
}

/// @nodoc
class _$PartographResponseCopyWithImpl<$Res, $Val extends PartographResponse>
    implements $PartographResponseCopyWith<$Res> {
  _$PartographResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
    Object? cervicalDilations = freezed,
    Object? medicalSurveillanceTable = freezed,
    Object? presentationPositionVarieties = freezed,
    Object? fetalHeartRates = freezed,
    Object? contractionFrequencies = freezed,
    Object? partographState = freezed,
    Object? curves = freezed,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observation: null == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
      cervicalDilations: freezed == cervicalDilations
          ? _value.cervicalDilations
          : cervicalDilations // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationResponse>?,
      medicalSurveillanceTable: freezed == medicalSurveillanceTable
          ? _value.medicalSurveillanceTable
          : medicalSurveillanceTable // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableResponse>?,
      presentationPositionVarieties: freezed == presentationPositionVarieties
          ? _value.presentationPositionVarieties
          : presentationPositionVarieties // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyEntityResponse>?,
      fetalHeartRates: freezed == fetalHeartRates
          ? _value.fetalHeartRates
          : fetalHeartRates // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateResponse>?,
      contractionFrequencies: freezed == contractionFrequencies
          ? _value.contractionFrequencies
          : contractionFrequencies // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyResponse>?,
      partographState: freezed == partographState
          ? _value.partographState
          : partographState // ignore: cast_nullable_to_non_nullable
              as PartographStateResponse?,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as AlertCurvesResponse?,
    ) as $Val);
  }

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartographStateResponseCopyWith<$Res>? get partographState {
    if (_value.partographState == null) {
      return null;
    }

    return $PartographStateResponseCopyWith<$Res>(_value.partographState!,
        (value) {
      return _then(_value.copyWith(partographState: value) as $Val);
    });
  }

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$PartographResponseImplCopyWith<$Res>
    implements $PartographResponseCopyWith<$Res> {
  factory _$$PartographResponseImplCopyWith(_$PartographResponseImpl value,
          $Res Function(_$PartographResponseImpl) then) =
      __$$PartographResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partographId,
      String name,
      String recordName,
      DateTime date,
      String observation,
      String workTime,
      List<CervicalDilationResponse>? cervicalDilations,
      List<MedicalSurveillanceTableResponse>? medicalSurveillanceTable,
      List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarieties,
      List<FetalHeartRateResponse>? fetalHeartRates,
      List<ContractionFrequencyResponse>? contractionFrequencies,
      PartographStateResponse? partographState,
      AlertCurvesResponse? curves});

  @override
  $PartographStateResponseCopyWith<$Res>? get partographState;
  @override
  $AlertCurvesResponseCopyWith<$Res>? get curves;
}

/// @nodoc
class __$$PartographResponseImplCopyWithImpl<$Res>
    extends _$PartographResponseCopyWithImpl<$Res, _$PartographResponseImpl>
    implements _$$PartographResponseImplCopyWith<$Res> {
  __$$PartographResponseImplCopyWithImpl(_$PartographResponseImpl _value,
      $Res Function(_$PartographResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
    Object? cervicalDilations = freezed,
    Object? medicalSurveillanceTable = freezed,
    Object? presentationPositionVarieties = freezed,
    Object? fetalHeartRates = freezed,
    Object? contractionFrequencies = freezed,
    Object? partographState = freezed,
    Object? curves = freezed,
  }) {
    return _then(_$PartographResponseImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observation: null == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
      cervicalDilations: freezed == cervicalDilations
          ? _value._cervicalDilations
          : cervicalDilations // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationResponse>?,
      medicalSurveillanceTable: freezed == medicalSurveillanceTable
          ? _value._medicalSurveillanceTable
          : medicalSurveillanceTable // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableResponse>?,
      presentationPositionVarieties: freezed == presentationPositionVarieties
          ? _value._presentationPositionVarieties
          : presentationPositionVarieties // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyEntityResponse>?,
      fetalHeartRates: freezed == fetalHeartRates
          ? _value._fetalHeartRates
          : fetalHeartRates // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateResponse>?,
      contractionFrequencies: freezed == contractionFrequencies
          ? _value._contractionFrequencies
          : contractionFrequencies // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyResponse>?,
      partographState: freezed == partographState
          ? _value.partographState
          : partographState // ignore: cast_nullable_to_non_nullable
              as PartographStateResponse?,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as AlertCurvesResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographResponseImpl implements _PartographResponse {
  const _$PartographResponseImpl(
      {required this.partographId,
      required this.name,
      required this.recordName,
      required this.date,
      required this.observation,
      required this.workTime,
      final List<CervicalDilationResponse>? cervicalDilations,
      final List<MedicalSurveillanceTableResponse>? medicalSurveillanceTable,
      final List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarieties,
      final List<FetalHeartRateResponse>? fetalHeartRates,
      final List<ContractionFrequencyResponse>? contractionFrequencies,
      this.partographState,
      this.curves})
      : _cervicalDilations = cervicalDilations,
        _medicalSurveillanceTable = medicalSurveillanceTable,
        _presentationPositionVarieties = presentationPositionVarieties,
        _fetalHeartRates = fetalHeartRates,
        _contractionFrequencies = contractionFrequencies;

  factory _$PartographResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographResponseImplFromJson(json);

  @override
  final String partographId;
  @override
  final String name;
  @override
  final String recordName;
  @override
  final DateTime date;
  @override
  final String observation;
  @override
  final String workTime;
  final List<CervicalDilationResponse>? _cervicalDilations;
  @override
  List<CervicalDilationResponse>? get cervicalDilations {
    final value = _cervicalDilations;
    if (value == null) return null;
    if (_cervicalDilations is EqualUnmodifiableListView)
      return _cervicalDilations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicalSurveillanceTableResponse>? _medicalSurveillanceTable;
  @override
  List<MedicalSurveillanceTableResponse>? get medicalSurveillanceTable {
    final value = _medicalSurveillanceTable;
    if (value == null) return null;
    if (_medicalSurveillanceTable is EqualUnmodifiableListView)
      return _medicalSurveillanceTable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PresentationPositionVarietyEntityResponse>?
      _presentationPositionVarieties;
  @override
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarieties {
    final value = _presentationPositionVarieties;
    if (value == null) return null;
    if (_presentationPositionVarieties is EqualUnmodifiableListView)
      return _presentationPositionVarieties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FetalHeartRateResponse>? _fetalHeartRates;
  @override
  List<FetalHeartRateResponse>? get fetalHeartRates {
    final value = _fetalHeartRates;
    if (value == null) return null;
    if (_fetalHeartRates is EqualUnmodifiableListView) return _fetalHeartRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContractionFrequencyResponse>? _contractionFrequencies;
  @override
  List<ContractionFrequencyResponse>? get contractionFrequencies {
    final value = _contractionFrequencies;
    if (value == null) return null;
    if (_contractionFrequencies is EqualUnmodifiableListView)
      return _contractionFrequencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PartographStateResponse? partographState;
  @override
  final AlertCurvesResponse? curves;

  @override
  String toString() {
    return 'PartographResponse(partographId: $partographId, name: $name, recordName: $recordName, date: $date, observation: $observation, workTime: $workTime, cervicalDilations: $cervicalDilations, medicalSurveillanceTable: $medicalSurveillanceTable, presentationPositionVarieties: $presentationPositionVarieties, fetalHeartRates: $fetalHeartRates, contractionFrequencies: $contractionFrequencies, partographState: $partographState, curves: $curves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographResponseImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recordName, recordName) ||
                other.recordName == recordName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.observation, observation) ||
                other.observation == observation) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime) &&
            const DeepCollectionEquality()
                .equals(other._cervicalDilations, _cervicalDilations) &&
            const DeepCollectionEquality().equals(
                other._medicalSurveillanceTable, _medicalSurveillanceTable) &&
            const DeepCollectionEquality().equals(
                other._presentationPositionVarieties,
                _presentationPositionVarieties) &&
            const DeepCollectionEquality()
                .equals(other._fetalHeartRates, _fetalHeartRates) &&
            const DeepCollectionEquality().equals(
                other._contractionFrequencies, _contractionFrequencies) &&
            (identical(other.partographState, partographState) ||
                other.partographState == partographState) &&
            (identical(other.curves, curves) || other.curves == curves));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partographId,
      name,
      recordName,
      date,
      observation,
      workTime,
      const DeepCollectionEquality().hash(_cervicalDilations),
      const DeepCollectionEquality().hash(_medicalSurveillanceTable),
      const DeepCollectionEquality().hash(_presentationPositionVarieties),
      const DeepCollectionEquality().hash(_fetalHeartRates),
      const DeepCollectionEquality().hash(_contractionFrequencies),
      partographState,
      curves);

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographResponseImplCopyWith<_$PartographResponseImpl> get copyWith =>
      __$$PartographResponseImplCopyWithImpl<_$PartographResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographResponse implements PartographResponse {
  const factory _PartographResponse(
      {required final String partographId,
      required final String name,
      required final String recordName,
      required final DateTime date,
      required final String observation,
      required final String workTime,
      final List<CervicalDilationResponse>? cervicalDilations,
      final List<MedicalSurveillanceTableResponse>? medicalSurveillanceTable,
      final List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarieties,
      final List<FetalHeartRateResponse>? fetalHeartRates,
      final List<ContractionFrequencyResponse>? contractionFrequencies,
      final PartographStateResponse? partographState,
      final AlertCurvesResponse? curves}) = _$PartographResponseImpl;

  factory _PartographResponse.fromJson(Map<String, dynamic> json) =
      _$PartographResponseImpl.fromJson;

  @override
  String get partographId;
  @override
  String get name;
  @override
  String get recordName;
  @override
  DateTime get date;
  @override
  String get observation;
  @override
  String get workTime;
  @override
  List<CervicalDilationResponse>? get cervicalDilations;
  @override
  List<MedicalSurveillanceTableResponse>? get medicalSurveillanceTable;
  @override
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarieties;
  @override
  List<FetalHeartRateResponse>? get fetalHeartRates;
  @override
  List<ContractionFrequencyResponse>? get contractionFrequencies;
  @override
  PartographStateResponse? get partographState;
  @override
  AlertCurvesResponse? get curves;

  /// Create a copy of PartographResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographResponseImplCopyWith<_$PartographResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
