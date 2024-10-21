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
  List<CervicalDilationResponse>? get cervicalDilationResponse =>
      throw _privateConstructorUsedError;
  List<MedicalSurveillanceTableResponse>?
      get medicalSurveillanceTableResponse =>
          throw _privateConstructorUsedError;
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarietyEntityResponse =>
          throw _privateConstructorUsedError;
  List<FetalHeartRateResponse>? get fetalHeartRateResponse =>
      throw _privateConstructorUsedError;
  List<ContractionFrequencyResponse>? get contractionFrequenceResponse =>
      throw _privateConstructorUsedError;
  PartographStateResponse? get partographStateResponse =>
      throw _privateConstructorUsedError;
  AlertCurvesResponse? get alertCurvesResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      List<CervicalDilationResponse>? cervicalDilationResponse,
      List<MedicalSurveillanceTableResponse>? medicalSurveillanceTableResponse,
      List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarietyEntityResponse,
      List<FetalHeartRateResponse>? fetalHeartRateResponse,
      List<ContractionFrequencyResponse>? contractionFrequenceResponse,
      PartographStateResponse? partographStateResponse,
      AlertCurvesResponse? alertCurvesResponse});

  $PartographStateResponseCopyWith<$Res>? get partographStateResponse;
  $AlertCurvesResponseCopyWith<$Res>? get alertCurvesResponse;
}

/// @nodoc
class _$PartographResponseCopyWithImpl<$Res, $Val extends PartographResponse>
    implements $PartographResponseCopyWith<$Res> {
  _$PartographResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
    Object? cervicalDilationResponse = freezed,
    Object? medicalSurveillanceTableResponse = freezed,
    Object? presentationPositionVarietyEntityResponse = freezed,
    Object? fetalHeartRateResponse = freezed,
    Object? contractionFrequenceResponse = freezed,
    Object? partographStateResponse = freezed,
    Object? alertCurvesResponse = freezed,
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
      cervicalDilationResponse: freezed == cervicalDilationResponse
          ? _value.cervicalDilationResponse
          : cervicalDilationResponse // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationResponse>?,
      medicalSurveillanceTableResponse: freezed ==
              medicalSurveillanceTableResponse
          ? _value.medicalSurveillanceTableResponse
          : medicalSurveillanceTableResponse // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableResponse>?,
      presentationPositionVarietyEntityResponse: freezed ==
              presentationPositionVarietyEntityResponse
          ? _value.presentationPositionVarietyEntityResponse
          : presentationPositionVarietyEntityResponse // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyEntityResponse>?,
      fetalHeartRateResponse: freezed == fetalHeartRateResponse
          ? _value.fetalHeartRateResponse
          : fetalHeartRateResponse // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateResponse>?,
      contractionFrequenceResponse: freezed == contractionFrequenceResponse
          ? _value.contractionFrequenceResponse
          : contractionFrequenceResponse // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyResponse>?,
      partographStateResponse: freezed == partographStateResponse
          ? _value.partographStateResponse
          : partographStateResponse // ignore: cast_nullable_to_non_nullable
              as PartographStateResponse?,
      alertCurvesResponse: freezed == alertCurvesResponse
          ? _value.alertCurvesResponse
          : alertCurvesResponse // ignore: cast_nullable_to_non_nullable
              as AlertCurvesResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartographStateResponseCopyWith<$Res>? get partographStateResponse {
    if (_value.partographStateResponse == null) {
      return null;
    }

    return $PartographStateResponseCopyWith<$Res>(
        _value.partographStateResponse!, (value) {
      return _then(_value.copyWith(partographStateResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertCurvesResponseCopyWith<$Res>? get alertCurvesResponse {
    if (_value.alertCurvesResponse == null) {
      return null;
    }

    return $AlertCurvesResponseCopyWith<$Res>(_value.alertCurvesResponse!,
        (value) {
      return _then(_value.copyWith(alertCurvesResponse: value) as $Val);
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
      List<CervicalDilationResponse>? cervicalDilationResponse,
      List<MedicalSurveillanceTableResponse>? medicalSurveillanceTableResponse,
      List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarietyEntityResponse,
      List<FetalHeartRateResponse>? fetalHeartRateResponse,
      List<ContractionFrequencyResponse>? contractionFrequenceResponse,
      PartographStateResponse? partographStateResponse,
      AlertCurvesResponse? alertCurvesResponse});

  @override
  $PartographStateResponseCopyWith<$Res>? get partographStateResponse;
  @override
  $AlertCurvesResponseCopyWith<$Res>? get alertCurvesResponse;
}

/// @nodoc
class __$$PartographResponseImplCopyWithImpl<$Res>
    extends _$PartographResponseCopyWithImpl<$Res, _$PartographResponseImpl>
    implements _$$PartographResponseImplCopyWith<$Res> {
  __$$PartographResponseImplCopyWithImpl(_$PartographResponseImpl _value,
      $Res Function(_$PartographResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
    Object? cervicalDilationResponse = freezed,
    Object? medicalSurveillanceTableResponse = freezed,
    Object? presentationPositionVarietyEntityResponse = freezed,
    Object? fetalHeartRateResponse = freezed,
    Object? contractionFrequenceResponse = freezed,
    Object? partographStateResponse = freezed,
    Object? alertCurvesResponse = freezed,
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
      cervicalDilationResponse: freezed == cervicalDilationResponse
          ? _value._cervicalDilationResponse
          : cervicalDilationResponse // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationResponse>?,
      medicalSurveillanceTableResponse: freezed ==
              medicalSurveillanceTableResponse
          ? _value._medicalSurveillanceTableResponse
          : medicalSurveillanceTableResponse // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableResponse>?,
      presentationPositionVarietyEntityResponse: freezed ==
              presentationPositionVarietyEntityResponse
          ? _value._presentationPositionVarietyEntityResponse
          : presentationPositionVarietyEntityResponse // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyEntityResponse>?,
      fetalHeartRateResponse: freezed == fetalHeartRateResponse
          ? _value._fetalHeartRateResponse
          : fetalHeartRateResponse // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateResponse>?,
      contractionFrequenceResponse: freezed == contractionFrequenceResponse
          ? _value._contractionFrequenceResponse
          : contractionFrequenceResponse // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyResponse>?,
      partographStateResponse: freezed == partographStateResponse
          ? _value.partographStateResponse
          : partographStateResponse // ignore: cast_nullable_to_non_nullable
              as PartographStateResponse?,
      alertCurvesResponse: freezed == alertCurvesResponse
          ? _value.alertCurvesResponse
          : alertCurvesResponse // ignore: cast_nullable_to_non_nullable
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
      final List<CervicalDilationResponse>? cervicalDilationResponse,
      final List<MedicalSurveillanceTableResponse>?
          medicalSurveillanceTableResponse,
      final List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarietyEntityResponse,
      final List<FetalHeartRateResponse>? fetalHeartRateResponse,
      final List<ContractionFrequencyResponse>? contractionFrequenceResponse,
      this.partographStateResponse,
      this.alertCurvesResponse})
      : _cervicalDilationResponse = cervicalDilationResponse,
        _medicalSurveillanceTableResponse = medicalSurveillanceTableResponse,
        _presentationPositionVarietyEntityResponse =
            presentationPositionVarietyEntityResponse,
        _fetalHeartRateResponse = fetalHeartRateResponse,
        _contractionFrequenceResponse = contractionFrequenceResponse;

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
  final List<CervicalDilationResponse>? _cervicalDilationResponse;
  @override
  List<CervicalDilationResponse>? get cervicalDilationResponse {
    final value = _cervicalDilationResponse;
    if (value == null) return null;
    if (_cervicalDilationResponse is EqualUnmodifiableListView)
      return _cervicalDilationResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MedicalSurveillanceTableResponse>?
      _medicalSurveillanceTableResponse;
  @override
  List<MedicalSurveillanceTableResponse>? get medicalSurveillanceTableResponse {
    final value = _medicalSurveillanceTableResponse;
    if (value == null) return null;
    if (_medicalSurveillanceTableResponse is EqualUnmodifiableListView)
      return _medicalSurveillanceTableResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PresentationPositionVarietyEntityResponse>?
      _presentationPositionVarietyEntityResponse;
  @override
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarietyEntityResponse {
    final value = _presentationPositionVarietyEntityResponse;
    if (value == null) return null;
    if (_presentationPositionVarietyEntityResponse is EqualUnmodifiableListView)
      return _presentationPositionVarietyEntityResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FetalHeartRateResponse>? _fetalHeartRateResponse;
  @override
  List<FetalHeartRateResponse>? get fetalHeartRateResponse {
    final value = _fetalHeartRateResponse;
    if (value == null) return null;
    if (_fetalHeartRateResponse is EqualUnmodifiableListView)
      return _fetalHeartRateResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContractionFrequencyResponse>? _contractionFrequenceResponse;
  @override
  List<ContractionFrequencyResponse>? get contractionFrequenceResponse {
    final value = _contractionFrequenceResponse;
    if (value == null) return null;
    if (_contractionFrequenceResponse is EqualUnmodifiableListView)
      return _contractionFrequenceResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PartographStateResponse? partographStateResponse;
  @override
  final AlertCurvesResponse? alertCurvesResponse;

  @override
  String toString() {
    return 'PartographResponse(partographId: $partographId, name: $name, recordName: $recordName, date: $date, observation: $observation, workTime: $workTime, cervicalDilationResponse: $cervicalDilationResponse, medicalSurveillanceTableResponse: $medicalSurveillanceTableResponse, presentationPositionVarietyEntityResponse: $presentationPositionVarietyEntityResponse, fetalHeartRateResponse: $fetalHeartRateResponse, contractionFrequenceResponse: $contractionFrequenceResponse, partographStateResponse: $partographStateResponse, alertCurvesResponse: $alertCurvesResponse)';
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
            const DeepCollectionEquality().equals(
                other._cervicalDilationResponse, _cervicalDilationResponse) &&
            const DeepCollectionEquality().equals(
                other._medicalSurveillanceTableResponse,
                _medicalSurveillanceTableResponse) &&
            const DeepCollectionEquality().equals(
                other._presentationPositionVarietyEntityResponse,
                _presentationPositionVarietyEntityResponse) &&
            const DeepCollectionEquality().equals(
                other._fetalHeartRateResponse, _fetalHeartRateResponse) &&
            const DeepCollectionEquality().equals(
                other._contractionFrequenceResponse,
                _contractionFrequenceResponse) &&
            (identical(
                    other.partographStateResponse, partographStateResponse) ||
                other.partographStateResponse == partographStateResponse) &&
            (identical(other.alertCurvesResponse, alertCurvesResponse) ||
                other.alertCurvesResponse == alertCurvesResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partographId,
      name,
      recordName,
      date,
      observation,
      workTime,
      const DeepCollectionEquality().hash(_cervicalDilationResponse),
      const DeepCollectionEquality().hash(_medicalSurveillanceTableResponse),
      const DeepCollectionEquality()
          .hash(_presentationPositionVarietyEntityResponse),
      const DeepCollectionEquality().hash(_fetalHeartRateResponse),
      const DeepCollectionEquality().hash(_contractionFrequenceResponse),
      partographStateResponse,
      alertCurvesResponse);

  @JsonKey(ignore: true)
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
      final List<CervicalDilationResponse>? cervicalDilationResponse,
      final List<MedicalSurveillanceTableResponse>?
          medicalSurveillanceTableResponse,
      final List<PresentationPositionVarietyEntityResponse>?
          presentationPositionVarietyEntityResponse,
      final List<FetalHeartRateResponse>? fetalHeartRateResponse,
      final List<ContractionFrequencyResponse>? contractionFrequenceResponse,
      final PartographStateResponse? partographStateResponse,
      final AlertCurvesResponse?
          alertCurvesResponse}) = _$PartographResponseImpl;

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
  List<CervicalDilationResponse>? get cervicalDilationResponse;
  @override
  List<MedicalSurveillanceTableResponse>? get medicalSurveillanceTableResponse;
  @override
  List<PresentationPositionVarietyEntityResponse>?
      get presentationPositionVarietyEntityResponse;
  @override
  List<FetalHeartRateResponse>? get fetalHeartRateResponse;
  @override
  List<ContractionFrequencyResponse>? get contractionFrequenceResponse;
  @override
  PartographStateResponse? get partographStateResponse;
  @override
  AlertCurvesResponse? get alertCurvesResponse;
  @override
  @JsonKey(ignore: true)
  _$$PartographResponseImplCopyWith<_$PartographResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
