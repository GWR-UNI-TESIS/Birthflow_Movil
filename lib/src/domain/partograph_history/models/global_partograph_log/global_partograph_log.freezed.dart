// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_partograph_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalPartographLog _$GlobalPartographLogFromJson(Map<String, dynamic> json) {
  return _GlobalPartographLog.fromJson(json);
}

/// @nodoc
mixin _$GlobalPartographLog {
  @JsonKey(name: 'partographLog')
  PartographLog get partographLog => throw _privateConstructorUsedError;
  @JsonKey(name: 'cervicalDilationLog')
  List<CervicalDilationLog> get cervicalDilationLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'medicalSurveillanceTableLog')
  List<MedicalSurveillanceTableLog> get medicalSurveillanceTableLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'presentationPositionVarietyLog')
  List<PresentationPositionVarietyLog> get presentationPositionVarietyLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'contractionFrequencyLog')
  List<ContractionFrequencyLog> get contractionFrequencyLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'fetalHeartRateLog')
  List<FetalHeartRateLog> get fetalHeartRateLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'childbirthNoteLog')
  ChildbirthNoteLog? get childbirthNoteLog =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'curves')
  Curves? get curves => throw _privateConstructorUsedError;

  /// Serializes this GlobalPartographLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalPartographLogCopyWith<GlobalPartographLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalPartographLogCopyWith<$Res> {
  factory $GlobalPartographLogCopyWith(
          GlobalPartographLog value, $Res Function(GlobalPartographLog) then) =
      _$GlobalPartographLogCopyWithImpl<$Res, GlobalPartographLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'partographLog') PartographLog partographLog,
      @JsonKey(name: 'cervicalDilationLog')
      List<CervicalDilationLog> cervicalDilationLog,
      @JsonKey(name: 'medicalSurveillanceTableLog')
      List<MedicalSurveillanceTableLog> medicalSurveillanceTableLog,
      @JsonKey(name: 'presentationPositionVarietyLog')
      List<PresentationPositionVarietyLog> presentationPositionVarietyLog,
      @JsonKey(name: 'contractionFrequencyLog')
      List<ContractionFrequencyLog> contractionFrequencyLog,
      @JsonKey(name: 'fetalHeartRateLog')
      List<FetalHeartRateLog> fetalHeartRateLog,
      @JsonKey(name: 'childbirthNoteLog') ChildbirthNoteLog? childbirthNoteLog,
      @JsonKey(name: 'curves') Curves? curves});

  $PartographLogCopyWith<$Res> get partographLog;
  $ChildbirthNoteLogCopyWith<$Res>? get childbirthNoteLog;
  $CurvesCopyWith<$Res>? get curves;
}

/// @nodoc
class _$GlobalPartographLogCopyWithImpl<$Res, $Val extends GlobalPartographLog>
    implements $GlobalPartographLogCopyWith<$Res> {
  _$GlobalPartographLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographLog = null,
    Object? cervicalDilationLog = null,
    Object? medicalSurveillanceTableLog = null,
    Object? presentationPositionVarietyLog = null,
    Object? contractionFrequencyLog = null,
    Object? fetalHeartRateLog = null,
    Object? childbirthNoteLog = freezed,
    Object? curves = freezed,
  }) {
    return _then(_value.copyWith(
      partographLog: null == partographLog
          ? _value.partographLog
          : partographLog // ignore: cast_nullable_to_non_nullable
              as PartographLog,
      cervicalDilationLog: null == cervicalDilationLog
          ? _value.cervicalDilationLog
          : cervicalDilationLog // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationLog>,
      medicalSurveillanceTableLog: null == medicalSurveillanceTableLog
          ? _value.medicalSurveillanceTableLog
          : medicalSurveillanceTableLog // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableLog>,
      presentationPositionVarietyLog: null == presentationPositionVarietyLog
          ? _value.presentationPositionVarietyLog
          : presentationPositionVarietyLog // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyLog>,
      contractionFrequencyLog: null == contractionFrequencyLog
          ? _value.contractionFrequencyLog
          : contractionFrequencyLog // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyLog>,
      fetalHeartRateLog: null == fetalHeartRateLog
          ? _value.fetalHeartRateLog
          : fetalHeartRateLog // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateLog>,
      childbirthNoteLog: freezed == childbirthNoteLog
          ? _value.childbirthNoteLog
          : childbirthNoteLog // ignore: cast_nullable_to_non_nullable
              as ChildbirthNoteLog?,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as Curves?,
    ) as $Val);
  }

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartographLogCopyWith<$Res> get partographLog {
    return $PartographLogCopyWith<$Res>(_value.partographLog, (value) {
      return _then(_value.copyWith(partographLog: value) as $Val);
    });
  }

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildbirthNoteLogCopyWith<$Res>? get childbirthNoteLog {
    if (_value.childbirthNoteLog == null) {
      return null;
    }

    return $ChildbirthNoteLogCopyWith<$Res>(_value.childbirthNoteLog!, (value) {
      return _then(_value.copyWith(childbirthNoteLog: value) as $Val);
    });
  }

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurvesCopyWith<$Res>? get curves {
    if (_value.curves == null) {
      return null;
    }

    return $CurvesCopyWith<$Res>(_value.curves!, (value) {
      return _then(_value.copyWith(curves: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlobalPartographLogImplCopyWith<$Res>
    implements $GlobalPartographLogCopyWith<$Res> {
  factory _$$GlobalPartographLogImplCopyWith(_$GlobalPartographLogImpl value,
          $Res Function(_$GlobalPartographLogImpl) then) =
      __$$GlobalPartographLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'partographLog') PartographLog partographLog,
      @JsonKey(name: 'cervicalDilationLog')
      List<CervicalDilationLog> cervicalDilationLog,
      @JsonKey(name: 'medicalSurveillanceTableLog')
      List<MedicalSurveillanceTableLog> medicalSurveillanceTableLog,
      @JsonKey(name: 'presentationPositionVarietyLog')
      List<PresentationPositionVarietyLog> presentationPositionVarietyLog,
      @JsonKey(name: 'contractionFrequencyLog')
      List<ContractionFrequencyLog> contractionFrequencyLog,
      @JsonKey(name: 'fetalHeartRateLog')
      List<FetalHeartRateLog> fetalHeartRateLog,
      @JsonKey(name: 'childbirthNoteLog') ChildbirthNoteLog? childbirthNoteLog,
      @JsonKey(name: 'curves') Curves? curves});

  @override
  $PartographLogCopyWith<$Res> get partographLog;
  @override
  $ChildbirthNoteLogCopyWith<$Res>? get childbirthNoteLog;
  @override
  $CurvesCopyWith<$Res>? get curves;
}

/// @nodoc
class __$$GlobalPartographLogImplCopyWithImpl<$Res>
    extends _$GlobalPartographLogCopyWithImpl<$Res, _$GlobalPartographLogImpl>
    implements _$$GlobalPartographLogImplCopyWith<$Res> {
  __$$GlobalPartographLogImplCopyWithImpl(_$GlobalPartographLogImpl _value,
      $Res Function(_$GlobalPartographLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographLog = null,
    Object? cervicalDilationLog = null,
    Object? medicalSurveillanceTableLog = null,
    Object? presentationPositionVarietyLog = null,
    Object? contractionFrequencyLog = null,
    Object? fetalHeartRateLog = null,
    Object? childbirthNoteLog = freezed,
    Object? curves = freezed,
  }) {
    return _then(_$GlobalPartographLogImpl(
      partographLog: null == partographLog
          ? _value.partographLog
          : partographLog // ignore: cast_nullable_to_non_nullable
              as PartographLog,
      cervicalDilationLog: null == cervicalDilationLog
          ? _value._cervicalDilationLog
          : cervicalDilationLog // ignore: cast_nullable_to_non_nullable
              as List<CervicalDilationLog>,
      medicalSurveillanceTableLog: null == medicalSurveillanceTableLog
          ? _value._medicalSurveillanceTableLog
          : medicalSurveillanceTableLog // ignore: cast_nullable_to_non_nullable
              as List<MedicalSurveillanceTableLog>,
      presentationPositionVarietyLog: null == presentationPositionVarietyLog
          ? _value._presentationPositionVarietyLog
          : presentationPositionVarietyLog // ignore: cast_nullable_to_non_nullable
              as List<PresentationPositionVarietyLog>,
      contractionFrequencyLog: null == contractionFrequencyLog
          ? _value._contractionFrequencyLog
          : contractionFrequencyLog // ignore: cast_nullable_to_non_nullable
              as List<ContractionFrequencyLog>,
      fetalHeartRateLog: null == fetalHeartRateLog
          ? _value._fetalHeartRateLog
          : fetalHeartRateLog // ignore: cast_nullable_to_non_nullable
              as List<FetalHeartRateLog>,
      childbirthNoteLog: freezed == childbirthNoteLog
          ? _value.childbirthNoteLog
          : childbirthNoteLog // ignore: cast_nullable_to_non_nullable
              as ChildbirthNoteLog?,
      curves: freezed == curves
          ? _value.curves
          : curves // ignore: cast_nullable_to_non_nullable
              as Curves?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalPartographLogImpl implements _GlobalPartographLog {
  _$GlobalPartographLogImpl(
      {@JsonKey(name: 'partographLog') required this.partographLog,
      @JsonKey(name: 'cervicalDilationLog')
      final List<CervicalDilationLog> cervicalDilationLog = const [],
      @JsonKey(name: 'medicalSurveillanceTableLog')
      final List<MedicalSurveillanceTableLog> medicalSurveillanceTableLog =
          const [],
      @JsonKey(name: 'presentationPositionVarietyLog')
      final List<PresentationPositionVarietyLog>
          presentationPositionVarietyLog = const [],
      @JsonKey(name: 'contractionFrequencyLog')
      final List<ContractionFrequencyLog> contractionFrequencyLog = const [],
      @JsonKey(name: 'fetalHeartRateLog')
      final List<FetalHeartRateLog> fetalHeartRateLog = const [],
      @JsonKey(name: 'childbirthNoteLog') this.childbirthNoteLog,
      @JsonKey(name: 'curves') this.curves})
      : _cervicalDilationLog = cervicalDilationLog,
        _medicalSurveillanceTableLog = medicalSurveillanceTableLog,
        _presentationPositionVarietyLog = presentationPositionVarietyLog,
        _contractionFrequencyLog = contractionFrequencyLog,
        _fetalHeartRateLog = fetalHeartRateLog;

  factory _$GlobalPartographLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalPartographLogImplFromJson(json);

  @override
  @JsonKey(name: 'partographLog')
  final PartographLog partographLog;
  final List<CervicalDilationLog> _cervicalDilationLog;
  @override
  @JsonKey(name: 'cervicalDilationLog')
  List<CervicalDilationLog> get cervicalDilationLog {
    if (_cervicalDilationLog is EqualUnmodifiableListView)
      return _cervicalDilationLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cervicalDilationLog);
  }

  final List<MedicalSurveillanceTableLog> _medicalSurveillanceTableLog;
  @override
  @JsonKey(name: 'medicalSurveillanceTableLog')
  List<MedicalSurveillanceTableLog> get medicalSurveillanceTableLog {
    if (_medicalSurveillanceTableLog is EqualUnmodifiableListView)
      return _medicalSurveillanceTableLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicalSurveillanceTableLog);
  }

  final List<PresentationPositionVarietyLog> _presentationPositionVarietyLog;
  @override
  @JsonKey(name: 'presentationPositionVarietyLog')
  List<PresentationPositionVarietyLog> get presentationPositionVarietyLog {
    if (_presentationPositionVarietyLog is EqualUnmodifiableListView)
      return _presentationPositionVarietyLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentationPositionVarietyLog);
  }

  final List<ContractionFrequencyLog> _contractionFrequencyLog;
  @override
  @JsonKey(name: 'contractionFrequencyLog')
  List<ContractionFrequencyLog> get contractionFrequencyLog {
    if (_contractionFrequencyLog is EqualUnmodifiableListView)
      return _contractionFrequencyLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contractionFrequencyLog);
  }

  final List<FetalHeartRateLog> _fetalHeartRateLog;
  @override
  @JsonKey(name: 'fetalHeartRateLog')
  List<FetalHeartRateLog> get fetalHeartRateLog {
    if (_fetalHeartRateLog is EqualUnmodifiableListView)
      return _fetalHeartRateLog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetalHeartRateLog);
  }

  @override
  @JsonKey(name: 'childbirthNoteLog')
  final ChildbirthNoteLog? childbirthNoteLog;
  @override
  @JsonKey(name: 'curves')
  final Curves? curves;

  @override
  String toString() {
    return 'GlobalPartographLog(partographLog: $partographLog, cervicalDilationLog: $cervicalDilationLog, medicalSurveillanceTableLog: $medicalSurveillanceTableLog, presentationPositionVarietyLog: $presentationPositionVarietyLog, contractionFrequencyLog: $contractionFrequencyLog, fetalHeartRateLog: $fetalHeartRateLog, childbirthNoteLog: $childbirthNoteLog, curves: $curves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalPartographLogImpl &&
            (identical(other.partographLog, partographLog) ||
                other.partographLog == partographLog) &&
            const DeepCollectionEquality()
                .equals(other._cervicalDilationLog, _cervicalDilationLog) &&
            const DeepCollectionEquality().equals(
                other._medicalSurveillanceTableLog,
                _medicalSurveillanceTableLog) &&
            const DeepCollectionEquality().equals(
                other._presentationPositionVarietyLog,
                _presentationPositionVarietyLog) &&
            const DeepCollectionEquality().equals(
                other._contractionFrequencyLog, _contractionFrequencyLog) &&
            const DeepCollectionEquality()
                .equals(other._fetalHeartRateLog, _fetalHeartRateLog) &&
            (identical(other.childbirthNoteLog, childbirthNoteLog) ||
                other.childbirthNoteLog == childbirthNoteLog) &&
            (identical(other.curves, curves) || other.curves == curves));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partographLog,
      const DeepCollectionEquality().hash(_cervicalDilationLog),
      const DeepCollectionEquality().hash(_medicalSurveillanceTableLog),
      const DeepCollectionEquality().hash(_presentationPositionVarietyLog),
      const DeepCollectionEquality().hash(_contractionFrequencyLog),
      const DeepCollectionEquality().hash(_fetalHeartRateLog),
      childbirthNoteLog,
      curves);

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalPartographLogImplCopyWith<_$GlobalPartographLogImpl> get copyWith =>
      __$$GlobalPartographLogImplCopyWithImpl<_$GlobalPartographLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalPartographLogImplToJson(
      this,
    );
  }
}

abstract class _GlobalPartographLog implements GlobalPartographLog {
  factory _GlobalPartographLog(
      {@JsonKey(name: 'partographLog')
      required final PartographLog partographLog,
      @JsonKey(name: 'cervicalDilationLog')
      final List<CervicalDilationLog> cervicalDilationLog,
      @JsonKey(name: 'medicalSurveillanceTableLog')
      final List<MedicalSurveillanceTableLog> medicalSurveillanceTableLog,
      @JsonKey(name: 'presentationPositionVarietyLog')
      final List<PresentationPositionVarietyLog> presentationPositionVarietyLog,
      @JsonKey(name: 'contractionFrequencyLog')
      final List<ContractionFrequencyLog> contractionFrequencyLog,
      @JsonKey(name: 'fetalHeartRateLog')
      final List<FetalHeartRateLog> fetalHeartRateLog,
      @JsonKey(name: 'childbirthNoteLog')
      final ChildbirthNoteLog? childbirthNoteLog,
      @JsonKey(name: 'curves')
      final Curves? curves}) = _$GlobalPartographLogImpl;

  factory _GlobalPartographLog.fromJson(Map<String, dynamic> json) =
      _$GlobalPartographLogImpl.fromJson;

  @override
  @JsonKey(name: 'partographLog')
  PartographLog get partographLog;
  @override
  @JsonKey(name: 'cervicalDilationLog')
  List<CervicalDilationLog> get cervicalDilationLog;
  @override
  @JsonKey(name: 'medicalSurveillanceTableLog')
  List<MedicalSurveillanceTableLog> get medicalSurveillanceTableLog;
  @override
  @JsonKey(name: 'presentationPositionVarietyLog')
  List<PresentationPositionVarietyLog> get presentationPositionVarietyLog;
  @override
  @JsonKey(name: 'contractionFrequencyLog')
  List<ContractionFrequencyLog> get contractionFrequencyLog;
  @override
  @JsonKey(name: 'fetalHeartRateLog')
  List<FetalHeartRateLog> get fetalHeartRateLog;
  @override
  @JsonKey(name: 'childbirthNoteLog')
  ChildbirthNoteLog? get childbirthNoteLog;
  @override
  @JsonKey(name: 'curves')
  Curves? get curves;

  /// Create a copy of GlobalPartographLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalPartographLogImplCopyWith<_$GlobalPartographLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartographLog _$PartographLogFromJson(Map<String, dynamic> json) {
  return _PartographLog.fromJson(json);
}

/// @nodoc
mixin _$PartographLog {
  @JsonKey(name: 'Name', fromJson: _stringFromJson)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'RecordName', fromJson: _stringFromJson)
  String get recordName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Observation', fromJson: _stringFromJson)
  String get observation => throw _privateConstructorUsedError;
  @JsonKey(name: 'WorkTime', fromJson: _stringFromJson)
  String get workTime => throw _privateConstructorUsedError;

  /// Serializes this PartographLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographLogCopyWith<PartographLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographLogCopyWith<$Res> {
  factory $PartographLogCopyWith(
          PartographLog value, $Res Function(PartographLog) then) =
      _$PartographLogCopyWithImpl<$Res, PartographLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Name', fromJson: _stringFromJson) String name,
      @JsonKey(name: 'RecordName', fromJson: _stringFromJson) String recordName,
      @JsonKey(
          name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime date,
      @JsonKey(name: 'Observation', fromJson: _stringFromJson)
      String observation,
      @JsonKey(name: 'WorkTime', fromJson: _stringFromJson) String workTime});
}

/// @nodoc
class _$PartographLogCopyWithImpl<$Res, $Val extends PartographLog>
    implements $PartographLogCopyWith<$Res> {
  _$PartographLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographLogImplCopyWith<$Res>
    implements $PartographLogCopyWith<$Res> {
  factory _$$PartographLogImplCopyWith(
          _$PartographLogImpl value, $Res Function(_$PartographLogImpl) then) =
      __$$PartographLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Name', fromJson: _stringFromJson) String name,
      @JsonKey(name: 'RecordName', fromJson: _stringFromJson) String recordName,
      @JsonKey(
          name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime date,
      @JsonKey(name: 'Observation', fromJson: _stringFromJson)
      String observation,
      @JsonKey(name: 'WorkTime', fromJson: _stringFromJson) String workTime});
}

/// @nodoc
class __$$PartographLogImplCopyWithImpl<$Res>
    extends _$PartographLogCopyWithImpl<$Res, _$PartographLogImpl>
    implements _$$PartographLogImplCopyWith<$Res> {
  __$$PartographLogImplCopyWithImpl(
      _$PartographLogImpl _value, $Res Function(_$PartographLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
  }) {
    return _then(_$PartographLogImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographLogImpl implements _PartographLog {
  _$PartographLogImpl(
      {@JsonKey(name: 'Name', fromJson: _stringFromJson) required this.name,
      @JsonKey(name: 'RecordName', fromJson: _stringFromJson)
      required this.recordName,
      @JsonKey(
          name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.date,
      @JsonKey(name: 'Observation', fromJson: _stringFromJson)
      required this.observation,
      @JsonKey(name: 'WorkTime', fromJson: _stringFromJson)
      required this.workTime});

  factory _$PartographLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographLogImplFromJson(json);

  @override
  @JsonKey(name: 'Name', fromJson: _stringFromJson)
  final String name;
  @override
  @JsonKey(name: 'RecordName', fromJson: _stringFromJson)
  final String recordName;
  @override
  @JsonKey(name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime date;
  @override
  @JsonKey(name: 'Observation', fromJson: _stringFromJson)
  final String observation;
  @override
  @JsonKey(name: 'WorkTime', fromJson: _stringFromJson)
  final String workTime;

  @override
  String toString() {
    return 'PartographLog(name: $name, recordName: $recordName, date: $date, observation: $observation, workTime: $workTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographLogImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recordName, recordName) ||
                other.recordName == recordName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.observation, observation) ||
                other.observation == observation) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, recordName, date, observation, workTime);

  /// Create a copy of PartographLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographLogImplCopyWith<_$PartographLogImpl> get copyWith =>
      __$$PartographLogImplCopyWithImpl<_$PartographLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographLogImplToJson(
      this,
    );
  }
}

abstract class _PartographLog implements PartographLog {
  factory _PartographLog(
      {@JsonKey(name: 'Name', fromJson: _stringFromJson)
      required final String name,
      @JsonKey(name: 'RecordName', fromJson: _stringFromJson)
      required final String recordName,
      @JsonKey(
          name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime date,
      @JsonKey(name: 'Observation', fromJson: _stringFromJson)
      required final String observation,
      @JsonKey(name: 'WorkTime', fromJson: _stringFromJson)
      required final String workTime}) = _$PartographLogImpl;

  factory _PartographLog.fromJson(Map<String, dynamic> json) =
      _$PartographLogImpl.fromJson;

  @override
  @JsonKey(name: 'Name', fromJson: _stringFromJson)
  String get name;
  @override
  @JsonKey(name: 'RecordName', fromJson: _stringFromJson)
  String get recordName;
  @override
  @JsonKey(name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get date;
  @override
  @JsonKey(name: 'Observation', fromJson: _stringFromJson)
  String get observation;
  @override
  @JsonKey(name: 'WorkTime', fromJson: _stringFromJson)
  String get workTime;

  /// Create a copy of PartographLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographLogImplCopyWith<_$PartographLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CervicalDilationLog _$CervicalDilationLogFromJson(Map<String, dynamic> json) {
  return _CervicalDilationLog.fromJson(json);
}

/// @nodoc
mixin _$CervicalDilationLog {
  @JsonKey(name: 'Value', fromJson: _doubleFromJson)
  double get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get hour => throw _privateConstructorUsedError;
  @JsonKey(name: 'RemOrRam')
  bool get remOrRam => throw _privateConstructorUsedError;

  /// Serializes this CervicalDilationLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CervicalDilationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CervicalDilationLogCopyWith<CervicalDilationLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CervicalDilationLogCopyWith<$Res> {
  factory $CervicalDilationLogCopyWith(
          CervicalDilationLog value, $Res Function(CervicalDilationLog) then) =
      _$CervicalDilationLogCopyWithImpl<$Res, CervicalDilationLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Value', fromJson: _doubleFromJson) double value,
      @JsonKey(
          name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime hour,
      @JsonKey(name: 'RemOrRam') bool remOrRam});
}

/// @nodoc
class _$CervicalDilationLogCopyWithImpl<$Res, $Val extends CervicalDilationLog>
    implements $CervicalDilationLogCopyWith<$Res> {
  _$CervicalDilationLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CervicalDilationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CervicalDilationLogImplCopyWith<$Res>
    implements $CervicalDilationLogCopyWith<$Res> {
  factory _$$CervicalDilationLogImplCopyWith(_$CervicalDilationLogImpl value,
          $Res Function(_$CervicalDilationLogImpl) then) =
      __$$CervicalDilationLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Value', fromJson: _doubleFromJson) double value,
      @JsonKey(
          name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime hour,
      @JsonKey(name: 'RemOrRam') bool remOrRam});
}

/// @nodoc
class __$$CervicalDilationLogImplCopyWithImpl<$Res>
    extends _$CervicalDilationLogCopyWithImpl<$Res, _$CervicalDilationLogImpl>
    implements _$$CervicalDilationLogImplCopyWith<$Res> {
  __$$CervicalDilationLogImplCopyWithImpl(_$CervicalDilationLogImpl _value,
      $Res Function(_$CervicalDilationLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CervicalDilationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
  }) {
    return _then(_$CervicalDilationLogImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CervicalDilationLogImpl implements _CervicalDilationLog {
  _$CervicalDilationLogImpl(
      {@JsonKey(name: 'Value', fromJson: _doubleFromJson) required this.value,
      @JsonKey(
          name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.hour,
      @JsonKey(name: 'RemOrRam') required this.remOrRam});

  factory _$CervicalDilationLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CervicalDilationLogImplFromJson(json);

  @override
  @JsonKey(name: 'Value', fromJson: _doubleFromJson)
  final double value;
  @override
  @JsonKey(name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime hour;
  @override
  @JsonKey(name: 'RemOrRam')
  final bool remOrRam;

  @override
  String toString() {
    return 'CervicalDilationLog(value: $value, hour: $hour, remOrRam: $remOrRam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalDilationLogImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, hour, remOrRam);

  /// Create a copy of CervicalDilationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CervicalDilationLogImplCopyWith<_$CervicalDilationLogImpl> get copyWith =>
      __$$CervicalDilationLogImplCopyWithImpl<_$CervicalDilationLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CervicalDilationLogImplToJson(
      this,
    );
  }
}

abstract class _CervicalDilationLog implements CervicalDilationLog {
  factory _CervicalDilationLog(
      {@JsonKey(name: 'Value', fromJson: _doubleFromJson)
      required final double value,
      @JsonKey(
          name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime hour,
      @JsonKey(name: 'RemOrRam')
      required final bool remOrRam}) = _$CervicalDilationLogImpl;

  factory _CervicalDilationLog.fromJson(Map<String, dynamic> json) =
      _$CervicalDilationLogImpl.fromJson;

  @override
  @JsonKey(name: 'Value', fromJson: _doubleFromJson)
  double get value;
  @override
  @JsonKey(name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get hour;
  @override
  @JsonKey(name: 'RemOrRam')
  bool get remOrRam;

  /// Create a copy of CervicalDilationLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CervicalDilationLogImplCopyWith<_$CervicalDilationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicalSurveillanceTableLog _$MedicalSurveillanceTableLogFromJson(
    Map<String, dynamic> json) {
  return _MedicalSurveillanceTableLog.fromJson(json);
}

/// @nodoc
mixin _$MedicalSurveillanceTableLog {
  @JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
  String get maternalPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
  String get arterialPressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
  String get maternalPulse => throw _privateConstructorUsedError;
  @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
  String get fetalHeartRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
  String get contractionsDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
  String get frequencyContractions => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pain', fromJson: _stringFromJson)
  String get pain => throw _privateConstructorUsedError;
  @JsonKey(name: 'Letter', fromJson: _stringFromJson)
  String get letter => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this MedicalSurveillanceTableLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicalSurveillanceTableLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicalSurveillanceTableLogCopyWith<MedicalSurveillanceTableLog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalSurveillanceTableLogCopyWith<$Res> {
  factory $MedicalSurveillanceTableLogCopyWith(
          MedicalSurveillanceTableLog value,
          $Res Function(MedicalSurveillanceTableLog) then) =
      _$MedicalSurveillanceTableLogCopyWithImpl<$Res,
          MedicalSurveillanceTableLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
      String maternalPosition,
      @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
      String arterialPressure,
      @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
      String maternalPulse,
      @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
      String fetalHeartRate,
      @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
      String contractionsDuration,
      @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
      String frequencyContractions,
      @JsonKey(name: 'Pain', fromJson: _stringFromJson) String pain,
      @JsonKey(name: 'Letter', fromJson: _stringFromJson) String letter,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class _$MedicalSurveillanceTableLogCopyWithImpl<$Res,
        $Val extends MedicalSurveillanceTableLog>
    implements $MedicalSurveillanceTableLogCopyWith<$Res> {
  _$MedicalSurveillanceTableLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalSurveillanceTableLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maternalPosition = null,
    Object? arterialPressure = null,
    Object? maternalPulse = null,
    Object? fetalHeartRate = null,
    Object? contractionsDuration = null,
    Object? frequencyContractions = null,
    Object? pain = null,
    Object? letter = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      maternalPosition: null == maternalPosition
          ? _value.maternalPosition
          : maternalPosition // ignore: cast_nullable_to_non_nullable
              as String,
      arterialPressure: null == arterialPressure
          ? _value.arterialPressure
          : arterialPressure // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPulse: null == maternalPulse
          ? _value.maternalPulse
          : maternalPulse // ignore: cast_nullable_to_non_nullable
              as String,
      fetalHeartRate: null == fetalHeartRate
          ? _value.fetalHeartRate
          : fetalHeartRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractionsDuration: null == contractionsDuration
          ? _value.contractionsDuration
          : contractionsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyContractions: null == frequencyContractions
          ? _value.frequencyContractions
          : frequencyContractions // ignore: cast_nullable_to_non_nullable
              as String,
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalSurveillanceTableLogImplCopyWith<$Res>
    implements $MedicalSurveillanceTableLogCopyWith<$Res> {
  factory _$$MedicalSurveillanceTableLogImplCopyWith(
          _$MedicalSurveillanceTableLogImpl value,
          $Res Function(_$MedicalSurveillanceTableLogImpl) then) =
      __$$MedicalSurveillanceTableLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
      String maternalPosition,
      @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
      String arterialPressure,
      @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
      String maternalPulse,
      @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
      String fetalHeartRate,
      @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
      String contractionsDuration,
      @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
      String frequencyContractions,
      @JsonKey(name: 'Pain', fromJson: _stringFromJson) String pain,
      @JsonKey(name: 'Letter', fromJson: _stringFromJson) String letter,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class __$$MedicalSurveillanceTableLogImplCopyWithImpl<$Res>
    extends _$MedicalSurveillanceTableLogCopyWithImpl<$Res,
        _$MedicalSurveillanceTableLogImpl>
    implements _$$MedicalSurveillanceTableLogImplCopyWith<$Res> {
  __$$MedicalSurveillanceTableLogImplCopyWithImpl(
      _$MedicalSurveillanceTableLogImpl _value,
      $Res Function(_$MedicalSurveillanceTableLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalSurveillanceTableLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maternalPosition = null,
    Object? arterialPressure = null,
    Object? maternalPulse = null,
    Object? fetalHeartRate = null,
    Object? contractionsDuration = null,
    Object? frequencyContractions = null,
    Object? pain = null,
    Object? letter = null,
    Object? time = null,
  }) {
    return _then(_$MedicalSurveillanceTableLogImpl(
      maternalPosition: null == maternalPosition
          ? _value.maternalPosition
          : maternalPosition // ignore: cast_nullable_to_non_nullable
              as String,
      arterialPressure: null == arterialPressure
          ? _value.arterialPressure
          : arterialPressure // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPulse: null == maternalPulse
          ? _value.maternalPulse
          : maternalPulse // ignore: cast_nullable_to_non_nullable
              as String,
      fetalHeartRate: null == fetalHeartRate
          ? _value.fetalHeartRate
          : fetalHeartRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractionsDuration: null == contractionsDuration
          ? _value.contractionsDuration
          : contractionsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyContractions: null == frequencyContractions
          ? _value.frequencyContractions
          : frequencyContractions // ignore: cast_nullable_to_non_nullable
              as String,
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalSurveillanceTableLogImpl
    implements _MedicalSurveillanceTableLog {
  _$MedicalSurveillanceTableLogImpl(
      {@JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
      required this.maternalPosition,
      @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
      required this.arterialPressure,
      @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
      required this.maternalPulse,
      @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
      required this.fetalHeartRate,
      @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
      required this.contractionsDuration,
      @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
      required this.frequencyContractions,
      @JsonKey(name: 'Pain', fromJson: _stringFromJson) required this.pain,
      @JsonKey(name: 'Letter', fromJson: _stringFromJson) required this.letter,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.time});

  factory _$MedicalSurveillanceTableLogImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MedicalSurveillanceTableLogImplFromJson(json);

  @override
  @JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
  final String maternalPosition;
  @override
  @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
  final String arterialPressure;
  @override
  @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
  final String maternalPulse;
  @override
  @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
  final String fetalHeartRate;
  @override
  @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
  final String contractionsDuration;
  @override
  @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
  final String frequencyContractions;
  @override
  @JsonKey(name: 'Pain', fromJson: _stringFromJson)
  final String pain;
  @override
  @JsonKey(name: 'Letter', fromJson: _stringFromJson)
  final String letter;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime time;

  @override
  String toString() {
    return 'MedicalSurveillanceTableLog(maternalPosition: $maternalPosition, arterialPressure: $arterialPressure, maternalPulse: $maternalPulse, fetalHeartRate: $fetalHeartRate, contractionsDuration: $contractionsDuration, frequencyContractions: $frequencyContractions, pain: $pain, letter: $letter, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalSurveillanceTableLogImpl &&
            (identical(other.maternalPosition, maternalPosition) ||
                other.maternalPosition == maternalPosition) &&
            (identical(other.arterialPressure, arterialPressure) ||
                other.arterialPressure == arterialPressure) &&
            (identical(other.maternalPulse, maternalPulse) ||
                other.maternalPulse == maternalPulse) &&
            (identical(other.fetalHeartRate, fetalHeartRate) ||
                other.fetalHeartRate == fetalHeartRate) &&
            (identical(other.contractionsDuration, contractionsDuration) ||
                other.contractionsDuration == contractionsDuration) &&
            (identical(other.frequencyContractions, frequencyContractions) ||
                other.frequencyContractions == frequencyContractions) &&
            (identical(other.pain, pain) || other.pain == pain) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maternalPosition,
      arterialPressure,
      maternalPulse,
      fetalHeartRate,
      contractionsDuration,
      frequencyContractions,
      pain,
      letter,
      time);

  /// Create a copy of MedicalSurveillanceTableLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalSurveillanceTableLogImplCopyWith<_$MedicalSurveillanceTableLogImpl>
      get copyWith => __$$MedicalSurveillanceTableLogImplCopyWithImpl<
          _$MedicalSurveillanceTableLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalSurveillanceTableLogImplToJson(
      this,
    );
  }
}

abstract class _MedicalSurveillanceTableLog
    implements MedicalSurveillanceTableLog {
  factory _MedicalSurveillanceTableLog(
      {@JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
      required final String maternalPosition,
      @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
      required final String arterialPressure,
      @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
      required final String maternalPulse,
      @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
      required final String fetalHeartRate,
      @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
      required final String contractionsDuration,
      @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
      required final String frequencyContractions,
      @JsonKey(name: 'Pain', fromJson: _stringFromJson)
      required final String pain,
      @JsonKey(name: 'Letter', fromJson: _stringFromJson)
      required final String letter,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime time}) = _$MedicalSurveillanceTableLogImpl;

  factory _MedicalSurveillanceTableLog.fromJson(Map<String, dynamic> json) =
      _$MedicalSurveillanceTableLogImpl.fromJson;

  @override
  @JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson)
  String get maternalPosition;
  @override
  @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson)
  String get arterialPressure;
  @override
  @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson)
  String get maternalPulse;
  @override
  @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson)
  String get fetalHeartRate;
  @override
  @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson)
  String get contractionsDuration;
  @override
  @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson)
  String get frequencyContractions;
  @override
  @JsonKey(name: 'Pain', fromJson: _stringFromJson)
  String get pain;
  @override
  @JsonKey(name: 'Letter', fromJson: _stringFromJson)
  String get letter;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time;

  /// Create a copy of MedicalSurveillanceTableLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicalSurveillanceTableLogImplCopyWith<_$MedicalSurveillanceTableLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PresentationPositionVarietyLog _$PresentationPositionVarietyLogFromJson(
    Map<String, dynamic> json) {
  return _PresentationPositionVarietyLog.fromJson(json);
}

/// @nodoc
mixin _$PresentationPositionVarietyLog {
  @JsonKey(name: 'HodgePlane', fromJson: _intFromJson)
  int get hodgePlane => throw _privateConstructorUsedError;
  @JsonKey(name: 'Position', fromJson: _intFromJson)
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this PresentationPositionVarietyLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PresentationPositionVarietyLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresentationPositionVarietyLogCopyWith<PresentationPositionVarietyLog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationPositionVarietyLogCopyWith<$Res> {
  factory $PresentationPositionVarietyLogCopyWith(
          PresentationPositionVarietyLog value,
          $Res Function(PresentationPositionVarietyLog) then) =
      _$PresentationPositionVarietyLogCopyWithImpl<$Res,
          PresentationPositionVarietyLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'HodgePlane', fromJson: _intFromJson) int hodgePlane,
      @JsonKey(name: 'Position', fromJson: _intFromJson) int position,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class _$PresentationPositionVarietyLogCopyWithImpl<$Res,
        $Val extends PresentationPositionVarietyLog>
    implements $PresentationPositionVarietyLogCopyWith<$Res> {
  _$PresentationPositionVarietyLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresentationPositionVarietyLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$PresentationPositionVarietyLogImplCopyWith<$Res>
    implements $PresentationPositionVarietyLogCopyWith<$Res> {
  factory _$$PresentationPositionVarietyLogImplCopyWith(
          _$PresentationPositionVarietyLogImpl value,
          $Res Function(_$PresentationPositionVarietyLogImpl) then) =
      __$$PresentationPositionVarietyLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'HodgePlane', fromJson: _intFromJson) int hodgePlane,
      @JsonKey(name: 'Position', fromJson: _intFromJson) int position,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class __$$PresentationPositionVarietyLogImplCopyWithImpl<$Res>
    extends _$PresentationPositionVarietyLogCopyWithImpl<$Res,
        _$PresentationPositionVarietyLogImpl>
    implements _$$PresentationPositionVarietyLogImplCopyWith<$Res> {
  __$$PresentationPositionVarietyLogImplCopyWithImpl(
      _$PresentationPositionVarietyLogImpl _value,
      $Res Function(_$PresentationPositionVarietyLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresentationPositionVarietyLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
  }) {
    return _then(_$PresentationPositionVarietyLogImpl(
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
class _$PresentationPositionVarietyLogImpl
    implements _PresentationPositionVarietyLog {
  _$PresentationPositionVarietyLogImpl(
      {@JsonKey(name: 'HodgePlane', fromJson: _intFromJson)
      required this.hodgePlane,
      @JsonKey(name: 'Position', fromJson: _intFromJson) required this.position,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.time});

  factory _$PresentationPositionVarietyLogImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PresentationPositionVarietyLogImplFromJson(json);

  @override
  @JsonKey(name: 'HodgePlane', fromJson: _intFromJson)
  final int hodgePlane;
  @override
  @JsonKey(name: 'Position', fromJson: _intFromJson)
  final int position;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime time;

  @override
  String toString() {
    return 'PresentationPositionVarietyLog(hodgePlane: $hodgePlane, position: $position, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationPositionVarietyLogImpl &&
            (identical(other.hodgePlane, hodgePlane) ||
                other.hodgePlane == hodgePlane) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hodgePlane, position, time);

  /// Create a copy of PresentationPositionVarietyLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationPositionVarietyLogImplCopyWith<
          _$PresentationPositionVarietyLogImpl>
      get copyWith => __$$PresentationPositionVarietyLogImplCopyWithImpl<
          _$PresentationPositionVarietyLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresentationPositionVarietyLogImplToJson(
      this,
    );
  }
}

abstract class _PresentationPositionVarietyLog
    implements PresentationPositionVarietyLog {
  factory _PresentationPositionVarietyLog(
      {@JsonKey(name: 'HodgePlane', fromJson: _intFromJson)
      required final int hodgePlane,
      @JsonKey(name: 'Position', fromJson: _intFromJson)
      required final int position,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime time}) = _$PresentationPositionVarietyLogImpl;

  factory _PresentationPositionVarietyLog.fromJson(Map<String, dynamic> json) =
      _$PresentationPositionVarietyLogImpl.fromJson;

  @override
  @JsonKey(name: 'HodgePlane', fromJson: _intFromJson)
  int get hodgePlane;
  @override
  @JsonKey(name: 'Position', fromJson: _intFromJson)
  int get position;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time;

  /// Create a copy of PresentationPositionVarietyLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresentationPositionVarietyLogImplCopyWith<
          _$PresentationPositionVarietyLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractionFrequencyLog _$ContractionFrequencyLogFromJson(
    Map<String, dynamic> json) {
  return _ContractionFrequencyLog.fromJson(json);
}

/// @nodoc
mixin _$ContractionFrequencyLog {
  @JsonKey(name: 'PartographId', fromJson: _stringFromJson)
  String get partographId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this ContractionFrequencyLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractionFrequencyLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractionFrequencyLogCopyWith<ContractionFrequencyLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractionFrequencyLogCopyWith<$Res> {
  factory $ContractionFrequencyLogCopyWith(ContractionFrequencyLog value,
          $Res Function(ContractionFrequencyLog) then) =
      _$ContractionFrequencyLogCopyWithImpl<$Res, ContractionFrequencyLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PartographId', fromJson: _stringFromJson)
      String partographId,
      @JsonKey(name: 'Value', fromJson: _stringFromJson) String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class _$ContractionFrequencyLogCopyWithImpl<$Res,
        $Val extends ContractionFrequencyLog>
    implements $ContractionFrequencyLogCopyWith<$Res> {
  _$ContractionFrequencyLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractionFrequencyLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractionFrequencyLogImplCopyWith<$Res>
    implements $ContractionFrequencyLogCopyWith<$Res> {
  factory _$$ContractionFrequencyLogImplCopyWith(
          _$ContractionFrequencyLogImpl value,
          $Res Function(_$ContractionFrequencyLogImpl) then) =
      __$$ContractionFrequencyLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PartographId', fromJson: _stringFromJson)
      String partographId,
      @JsonKey(name: 'Value', fromJson: _stringFromJson) String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class __$$ContractionFrequencyLogImplCopyWithImpl<$Res>
    extends _$ContractionFrequencyLogCopyWithImpl<$Res,
        _$ContractionFrequencyLogImpl>
    implements _$$ContractionFrequencyLogImplCopyWith<$Res> {
  __$$ContractionFrequencyLogImplCopyWithImpl(
      _$ContractionFrequencyLogImpl _value,
      $Res Function(_$ContractionFrequencyLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractionFrequencyLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$ContractionFrequencyLogImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractionFrequencyLogImpl implements _ContractionFrequencyLog {
  _$ContractionFrequencyLogImpl(
      {@JsonKey(name: 'PartographId', fromJson: _stringFromJson)
      required this.partographId,
      @JsonKey(name: 'Value', fromJson: _stringFromJson) required this.value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.time});

  factory _$ContractionFrequencyLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractionFrequencyLogImplFromJson(json);

  @override
  @JsonKey(name: 'PartographId', fromJson: _stringFromJson)
  final String partographId;
  @override
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  final String value;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime time;

  @override
  String toString() {
    return 'ContractionFrequencyLog(partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractionFrequencyLogImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partographId, value, time);

  /// Create a copy of ContractionFrequencyLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractionFrequencyLogImplCopyWith<_$ContractionFrequencyLogImpl>
      get copyWith => __$$ContractionFrequencyLogImplCopyWithImpl<
          _$ContractionFrequencyLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractionFrequencyLogImplToJson(
      this,
    );
  }
}

abstract class _ContractionFrequencyLog implements ContractionFrequencyLog {
  factory _ContractionFrequencyLog(
      {@JsonKey(name: 'PartographId', fromJson: _stringFromJson)
      required final String partographId,
      @JsonKey(name: 'Value', fromJson: _stringFromJson)
      required final String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime time}) = _$ContractionFrequencyLogImpl;

  factory _ContractionFrequencyLog.fromJson(Map<String, dynamic> json) =
      _$ContractionFrequencyLogImpl.fromJson;

  @override
  @JsonKey(name: 'PartographId', fromJson: _stringFromJson)
  String get partographId;
  @override
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  String get value;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time;

  /// Create a copy of ContractionFrequencyLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractionFrequencyLogImplCopyWith<_$ContractionFrequencyLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetalHeartRateLog _$FetalHeartRateLogFromJson(Map<String, dynamic> json) {
  return _FetalHeartRateLog.fromJson(json);
}

/// @nodoc
mixin _$FetalHeartRateLog {
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this FetalHeartRateLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FetalHeartRateLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetalHeartRateLogCopyWith<FetalHeartRateLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetalHeartRateLogCopyWith<$Res> {
  factory $FetalHeartRateLogCopyWith(
          FetalHeartRateLog value, $Res Function(FetalHeartRateLog) then) =
      _$FetalHeartRateLogCopyWithImpl<$Res, FetalHeartRateLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Value', fromJson: _stringFromJson) String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class _$FetalHeartRateLogCopyWithImpl<$Res, $Val extends FetalHeartRateLog>
    implements $FetalHeartRateLogCopyWith<$Res> {
  _$FetalHeartRateLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetalHeartRateLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetalHeartRateLogImplCopyWith<$Res>
    implements $FetalHeartRateLogCopyWith<$Res> {
  factory _$$FetalHeartRateLogImplCopyWith(_$FetalHeartRateLogImpl value,
          $Res Function(_$FetalHeartRateLogImpl) then) =
      __$$FetalHeartRateLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Value', fromJson: _stringFromJson) String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class __$$FetalHeartRateLogImplCopyWithImpl<$Res>
    extends _$FetalHeartRateLogCopyWithImpl<$Res, _$FetalHeartRateLogImpl>
    implements _$$FetalHeartRateLogImplCopyWith<$Res> {
  __$$FetalHeartRateLogImplCopyWithImpl(_$FetalHeartRateLogImpl _value,
      $Res Function(_$FetalHeartRateLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetalHeartRateLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$FetalHeartRateLogImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetalHeartRateLogImpl implements _FetalHeartRateLog {
  _$FetalHeartRateLogImpl(
      {@JsonKey(name: 'Value', fromJson: _stringFromJson) required this.value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.time});

  factory _$FetalHeartRateLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetalHeartRateLogImplFromJson(json);

  @override
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  final String value;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime time;

  @override
  String toString() {
    return 'FetalHeartRateLog(value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetalHeartRateLogImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, time);

  /// Create a copy of FetalHeartRateLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetalHeartRateLogImplCopyWith<_$FetalHeartRateLogImpl> get copyWith =>
      __$$FetalHeartRateLogImplCopyWithImpl<_$FetalHeartRateLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetalHeartRateLogImplToJson(
      this,
    );
  }
}

abstract class _FetalHeartRateLog implements FetalHeartRateLog {
  factory _FetalHeartRateLog(
      {@JsonKey(name: 'Value', fromJson: _stringFromJson)
      required final String value,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime time}) = _$FetalHeartRateLogImpl;

  factory _FetalHeartRateLog.fromJson(Map<String, dynamic> json) =
      _$FetalHeartRateLogImpl.fromJson;

  @override
  @JsonKey(name: 'Value', fromJson: _stringFromJson)
  String get value;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time;

  /// Create a copy of FetalHeartRateLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetalHeartRateLogImplCopyWith<_$FetalHeartRateLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildbirthNoteLog _$ChildbirthNoteLogFromJson(Map<String, dynamic> json) {
  return _ChildbirthNoteLog.fromJson(json);
}

/// @nodoc
mixin _$ChildbirthNoteLog {
  @JsonKey(name: 'Description', fromJson: _stringFromJson)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Hour', fromJson: _stringFromJson)
  String get hour => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sex', fromJson: _stringFromJson)
  String get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'Apgar', fromJson: _stringFromJson)
  String get apgar => throw _privateConstructorUsedError;
  @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
  String get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'Caputto', fromJson: _stringFromJson)
  String get caputto => throw _privateConstructorUsedError;
  @JsonKey(name: 'Circular', fromJson: _stringFromJson)
  String get circular => throw _privateConstructorUsedError;
  @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson)
  String get lamniotico => throw _privateConstructorUsedError;
  @JsonKey(name: 'Miccion', fromJson: _stringFromJson)
  String get miccion => throw _privateConstructorUsedError;
  @JsonKey(name: 'Meconio', fromJson: _stringFromJson)
  String get meconio => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pa', fromJson: _stringFromJson)
  String get pa => throw _privateConstructorUsedError;
  @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson)
  String get expulsivo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Placenta', fromJson: _stringFromJson)
  String get placenta => throw _privateConstructorUsedError;
  @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
  String get alumbramiento => throw _privateConstructorUsedError;
  @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
  String get huellaPlantar => throw _privateConstructorUsedError;

  /// Serializes this ChildbirthNoteLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildbirthNoteLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildbirthNoteLogCopyWith<ChildbirthNoteLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildbirthNoteLogCopyWith<$Res> {
  factory $ChildbirthNoteLogCopyWith(
          ChildbirthNoteLog value, $Res Function(ChildbirthNoteLog) then) =
      _$ChildbirthNoteLogCopyWithImpl<$Res, ChildbirthNoteLog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Description', fromJson: _stringFromJson)
      String? description,
      @JsonKey(name: 'Hour', fromJson: _stringFromJson) String hour,
      @JsonKey(name: 'Sex', fromJson: _stringFromJson) String sex,
      @JsonKey(name: 'Apgar', fromJson: _stringFromJson) String apgar,
      @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
      String temperature,
      @JsonKey(name: 'Caputto', fromJson: _stringFromJson) String caputto,
      @JsonKey(name: 'Circular', fromJson: _stringFromJson) String circular,
      @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson) String lamniotico,
      @JsonKey(name: 'Miccion', fromJson: _stringFromJson) String miccion,
      @JsonKey(name: 'Meconio', fromJson: _stringFromJson) String meconio,
      @JsonKey(name: 'Pa', fromJson: _stringFromJson) String pa,
      @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson) String expulsivo,
      @JsonKey(name: 'Placenta', fromJson: _stringFromJson) String placenta,
      @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
      String alumbramiento,
      @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
      String huellaPlantar});
}

/// @nodoc
class _$ChildbirthNoteLogCopyWithImpl<$Res, $Val extends ChildbirthNoteLog>
    implements $ChildbirthNoteLogCopyWith<$Res> {
  _$ChildbirthNoteLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildbirthNoteLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? hour = null,
    Object? sex = null,
    Object? apgar = null,
    Object? temperature = null,
    Object? caputto = null,
    Object? circular = null,
    Object? lamniotico = null,
    Object? miccion = null,
    Object? meconio = null,
    Object? pa = null,
    Object? expulsivo = null,
    Object? placenta = null,
    Object? alumbramiento = null,
    Object? huellaPlantar = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      apgar: null == apgar
          ? _value.apgar
          : apgar // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      caputto: null == caputto
          ? _value.caputto
          : caputto // ignore: cast_nullable_to_non_nullable
              as String,
      circular: null == circular
          ? _value.circular
          : circular // ignore: cast_nullable_to_non_nullable
              as String,
      lamniotico: null == lamniotico
          ? _value.lamniotico
          : lamniotico // ignore: cast_nullable_to_non_nullable
              as String,
      miccion: null == miccion
          ? _value.miccion
          : miccion // ignore: cast_nullable_to_non_nullable
              as String,
      meconio: null == meconio
          ? _value.meconio
          : meconio // ignore: cast_nullable_to_non_nullable
              as String,
      pa: null == pa
          ? _value.pa
          : pa // ignore: cast_nullable_to_non_nullable
              as String,
      expulsivo: null == expulsivo
          ? _value.expulsivo
          : expulsivo // ignore: cast_nullable_to_non_nullable
              as String,
      placenta: null == placenta
          ? _value.placenta
          : placenta // ignore: cast_nullable_to_non_nullable
              as String,
      alumbramiento: null == alumbramiento
          ? _value.alumbramiento
          : alumbramiento // ignore: cast_nullable_to_non_nullable
              as String,
      huellaPlantar: null == huellaPlantar
          ? _value.huellaPlantar
          : huellaPlantar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildbirthNoteLogImplCopyWith<$Res>
    implements $ChildbirthNoteLogCopyWith<$Res> {
  factory _$$ChildbirthNoteLogImplCopyWith(_$ChildbirthNoteLogImpl value,
          $Res Function(_$ChildbirthNoteLogImpl) then) =
      __$$ChildbirthNoteLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Description', fromJson: _stringFromJson)
      String? description,
      @JsonKey(name: 'Hour', fromJson: _stringFromJson) String hour,
      @JsonKey(name: 'Sex', fromJson: _stringFromJson) String sex,
      @JsonKey(name: 'Apgar', fromJson: _stringFromJson) String apgar,
      @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
      String temperature,
      @JsonKey(name: 'Caputto', fromJson: _stringFromJson) String caputto,
      @JsonKey(name: 'Circular', fromJson: _stringFromJson) String circular,
      @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson) String lamniotico,
      @JsonKey(name: 'Miccion', fromJson: _stringFromJson) String miccion,
      @JsonKey(name: 'Meconio', fromJson: _stringFromJson) String meconio,
      @JsonKey(name: 'Pa', fromJson: _stringFromJson) String pa,
      @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson) String expulsivo,
      @JsonKey(name: 'Placenta', fromJson: _stringFromJson) String placenta,
      @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
      String alumbramiento,
      @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
      String huellaPlantar});
}

/// @nodoc
class __$$ChildbirthNoteLogImplCopyWithImpl<$Res>
    extends _$ChildbirthNoteLogCopyWithImpl<$Res, _$ChildbirthNoteLogImpl>
    implements _$$ChildbirthNoteLogImplCopyWith<$Res> {
  __$$ChildbirthNoteLogImplCopyWithImpl(_$ChildbirthNoteLogImpl _value,
      $Res Function(_$ChildbirthNoteLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildbirthNoteLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? hour = null,
    Object? sex = null,
    Object? apgar = null,
    Object? temperature = null,
    Object? caputto = null,
    Object? circular = null,
    Object? lamniotico = null,
    Object? miccion = null,
    Object? meconio = null,
    Object? pa = null,
    Object? expulsivo = null,
    Object? placenta = null,
    Object? alumbramiento = null,
    Object? huellaPlantar = null,
  }) {
    return _then(_$ChildbirthNoteLogImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      apgar: null == apgar
          ? _value.apgar
          : apgar // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      caputto: null == caputto
          ? _value.caputto
          : caputto // ignore: cast_nullable_to_non_nullable
              as String,
      circular: null == circular
          ? _value.circular
          : circular // ignore: cast_nullable_to_non_nullable
              as String,
      lamniotico: null == lamniotico
          ? _value.lamniotico
          : lamniotico // ignore: cast_nullable_to_non_nullable
              as String,
      miccion: null == miccion
          ? _value.miccion
          : miccion // ignore: cast_nullable_to_non_nullable
              as String,
      meconio: null == meconio
          ? _value.meconio
          : meconio // ignore: cast_nullable_to_non_nullable
              as String,
      pa: null == pa
          ? _value.pa
          : pa // ignore: cast_nullable_to_non_nullable
              as String,
      expulsivo: null == expulsivo
          ? _value.expulsivo
          : expulsivo // ignore: cast_nullable_to_non_nullable
              as String,
      placenta: null == placenta
          ? _value.placenta
          : placenta // ignore: cast_nullable_to_non_nullable
              as String,
      alumbramiento: null == alumbramiento
          ? _value.alumbramiento
          : alumbramiento // ignore: cast_nullable_to_non_nullable
              as String,
      huellaPlantar: null == huellaPlantar
          ? _value.huellaPlantar
          : huellaPlantar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildbirthNoteLogImpl implements _ChildbirthNoteLog {
  _$ChildbirthNoteLogImpl(
      {@JsonKey(name: 'Description', fromJson: _stringFromJson)
      this.description,
      @JsonKey(name: 'Hour', fromJson: _stringFromJson) required this.hour,
      @JsonKey(name: 'Sex', fromJson: _stringFromJson) required this.sex,
      @JsonKey(name: 'Apgar', fromJson: _stringFromJson) required this.apgar,
      @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
      required this.temperature,
      @JsonKey(name: 'Caputto', fromJson: _stringFromJson)
      required this.caputto,
      @JsonKey(name: 'Circular', fromJson: _stringFromJson)
      required this.circular,
      @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson)
      required this.lamniotico,
      @JsonKey(name: 'Miccion', fromJson: _stringFromJson)
      required this.miccion,
      @JsonKey(name: 'Meconio', fromJson: _stringFromJson)
      required this.meconio,
      @JsonKey(name: 'Pa', fromJson: _stringFromJson) required this.pa,
      @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson)
      required this.expulsivo,
      @JsonKey(name: 'Placenta', fromJson: _stringFromJson)
      required this.placenta,
      @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
      required this.alumbramiento,
      @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
      required this.huellaPlantar});

  factory _$ChildbirthNoteLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildbirthNoteLogImplFromJson(json);

  @override
  @JsonKey(name: 'Description', fromJson: _stringFromJson)
  final String? description;
  @override
  @JsonKey(name: 'Hour', fromJson: _stringFromJson)
  final String hour;
  @override
  @JsonKey(name: 'Sex', fromJson: _stringFromJson)
  final String sex;
  @override
  @JsonKey(name: 'Apgar', fromJson: _stringFromJson)
  final String apgar;
  @override
  @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
  final String temperature;
  @override
  @JsonKey(name: 'Caputto', fromJson: _stringFromJson)
  final String caputto;
  @override
  @JsonKey(name: 'Circular', fromJson: _stringFromJson)
  final String circular;
  @override
  @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson)
  final String lamniotico;
  @override
  @JsonKey(name: 'Miccion', fromJson: _stringFromJson)
  final String miccion;
  @override
  @JsonKey(name: 'Meconio', fromJson: _stringFromJson)
  final String meconio;
  @override
  @JsonKey(name: 'Pa', fromJson: _stringFromJson)
  final String pa;
  @override
  @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson)
  final String expulsivo;
  @override
  @JsonKey(name: 'Placenta', fromJson: _stringFromJson)
  final String placenta;
  @override
  @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
  final String alumbramiento;
  @override
  @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
  final String huellaPlantar;

  @override
  String toString() {
    return 'ChildbirthNoteLog(description: $description, hour: $hour, sex: $sex, apgar: $apgar, temperature: $temperature, caputto: $caputto, circular: $circular, lamniotico: $lamniotico, miccion: $miccion, meconio: $meconio, pa: $pa, expulsivo: $expulsivo, placenta: $placenta, alumbramiento: $alumbramiento, huellaPlantar: $huellaPlantar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildbirthNoteLogImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.apgar, apgar) || other.apgar == apgar) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.caputto, caputto) || other.caputto == caputto) &&
            (identical(other.circular, circular) ||
                other.circular == circular) &&
            (identical(other.lamniotico, lamniotico) ||
                other.lamniotico == lamniotico) &&
            (identical(other.miccion, miccion) || other.miccion == miccion) &&
            (identical(other.meconio, meconio) || other.meconio == meconio) &&
            (identical(other.pa, pa) || other.pa == pa) &&
            (identical(other.expulsivo, expulsivo) ||
                other.expulsivo == expulsivo) &&
            (identical(other.placenta, placenta) ||
                other.placenta == placenta) &&
            (identical(other.alumbramiento, alumbramiento) ||
                other.alumbramiento == alumbramiento) &&
            (identical(other.huellaPlantar, huellaPlantar) ||
                other.huellaPlantar == huellaPlantar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      hour,
      sex,
      apgar,
      temperature,
      caputto,
      circular,
      lamniotico,
      miccion,
      meconio,
      pa,
      expulsivo,
      placenta,
      alumbramiento,
      huellaPlantar);

  /// Create a copy of ChildbirthNoteLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildbirthNoteLogImplCopyWith<_$ChildbirthNoteLogImpl> get copyWith =>
      __$$ChildbirthNoteLogImplCopyWithImpl<_$ChildbirthNoteLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildbirthNoteLogImplToJson(
      this,
    );
  }
}

abstract class _ChildbirthNoteLog implements ChildbirthNoteLog {
  factory _ChildbirthNoteLog(
      {@JsonKey(name: 'Description', fromJson: _stringFromJson)
      final String? description,
      @JsonKey(name: 'Hour', fromJson: _stringFromJson)
      required final String hour,
      @JsonKey(name: 'Sex', fromJson: _stringFromJson)
      required final String sex,
      @JsonKey(name: 'Apgar', fromJson: _stringFromJson)
      required final String apgar,
      @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
      required final String temperature,
      @JsonKey(name: 'Caputto', fromJson: _stringFromJson)
      required final String caputto,
      @JsonKey(name: 'Circular', fromJson: _stringFromJson)
      required final String circular,
      @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson)
      required final String lamniotico,
      @JsonKey(name: 'Miccion', fromJson: _stringFromJson)
      required final String miccion,
      @JsonKey(name: 'Meconio', fromJson: _stringFromJson)
      required final String meconio,
      @JsonKey(name: 'Pa', fromJson: _stringFromJson) required final String pa,
      @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson)
      required final String expulsivo,
      @JsonKey(name: 'Placenta', fromJson: _stringFromJson)
      required final String placenta,
      @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
      required final String alumbramiento,
      @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
      required final String huellaPlantar}) = _$ChildbirthNoteLogImpl;

  factory _ChildbirthNoteLog.fromJson(Map<String, dynamic> json) =
      _$ChildbirthNoteLogImpl.fromJson;

  @override
  @JsonKey(name: 'Description', fromJson: _stringFromJson)
  String? get description;
  @override
  @JsonKey(name: 'Hour', fromJson: _stringFromJson)
  String get hour;
  @override
  @JsonKey(name: 'Sex', fromJson: _stringFromJson)
  String get sex;
  @override
  @JsonKey(name: 'Apgar', fromJson: _stringFromJson)
  String get apgar;
  @override
  @JsonKey(name: 'Temperature', fromJson: _stringFromJson)
  String get temperature;
  @override
  @JsonKey(name: 'Caputto', fromJson: _stringFromJson)
  String get caputto;
  @override
  @JsonKey(name: 'Circular', fromJson: _stringFromJson)
  String get circular;
  @override
  @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson)
  String get lamniotico;
  @override
  @JsonKey(name: 'Miccion', fromJson: _stringFromJson)
  String get miccion;
  @override
  @JsonKey(name: 'Meconio', fromJson: _stringFromJson)
  String get meconio;
  @override
  @JsonKey(name: 'Pa', fromJson: _stringFromJson)
  String get pa;
  @override
  @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson)
  String get expulsivo;
  @override
  @JsonKey(name: 'Placenta', fromJson: _stringFromJson)
  String get placenta;
  @override
  @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson)
  String get alumbramiento;
  @override
  @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson)
  String get huellaPlantar;

  /// Create a copy of ChildbirthNoteLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildbirthNoteLogImplCopyWith<_$ChildbirthNoteLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlertCurve _$AlertCurveFromJson(Map<String, dynamic> json) {
  return _AlertCurve.fromJson(json);
}

/// @nodoc
mixin _$AlertCurve {
  @JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
  double get cervicalDilation => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this AlertCurve to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertCurve
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertCurveCopyWith<AlertCurve> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCurveCopyWith<$Res> {
  factory $AlertCurveCopyWith(
          AlertCurve value, $Res Function(AlertCurve) then) =
      _$AlertCurveCopyWithImpl<$Res, AlertCurve>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
      double cervicalDilation,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class _$AlertCurveCopyWithImpl<$Res, $Val extends AlertCurve>
    implements $AlertCurveCopyWith<$Res> {
  _$AlertCurveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertCurve
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
abstract class _$$AlertCurveImplCopyWith<$Res>
    implements $AlertCurveCopyWith<$Res> {
  factory _$$AlertCurveImplCopyWith(
          _$AlertCurveImpl value, $Res Function(_$AlertCurveImpl) then) =
      __$$AlertCurveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
      double cervicalDilation,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      DateTime time});
}

/// @nodoc
class __$$AlertCurveImplCopyWithImpl<$Res>
    extends _$AlertCurveCopyWithImpl<$Res, _$AlertCurveImpl>
    implements _$$AlertCurveImplCopyWith<$Res> {
  __$$AlertCurveImplCopyWithImpl(
      _$AlertCurveImpl _value, $Res Function(_$AlertCurveImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertCurve
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cervicalDilation = null,
    Object? time = null,
  }) {
    return _then(_$AlertCurveImpl(
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
class _$AlertCurveImpl implements _AlertCurve {
  _$AlertCurveImpl(
      {@JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
      required this.cervicalDilation,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required this.time});

  factory _$AlertCurveImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertCurveImplFromJson(json);

  @override
  @JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
  final double cervicalDilation;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime time;

  @override
  String toString() {
    return 'AlertCurve(cervicalDilation: $cervicalDilation, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertCurveImpl &&
            (identical(other.cervicalDilation, cervicalDilation) ||
                other.cervicalDilation == cervicalDilation) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cervicalDilation, time);

  /// Create a copy of AlertCurve
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertCurveImplCopyWith<_$AlertCurveImpl> get copyWith =>
      __$$AlertCurveImplCopyWithImpl<_$AlertCurveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertCurveImplToJson(
      this,
    );
  }
}

abstract class _AlertCurve implements AlertCurve {
  factory _AlertCurve(
      {@JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
      required final double cervicalDilation,
      @JsonKey(
          name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
      required final DateTime time}) = _$AlertCurveImpl;

  factory _AlertCurve.fromJson(Map<String, dynamic> json) =
      _$AlertCurveImpl.fromJson;

  @override
  @JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson)
  double get cervicalDilation;
  @override
  @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime get time;

  /// Create a copy of AlertCurve
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertCurveImplCopyWith<_$AlertCurveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Curves _$CurvesFromJson(Map<String, dynamic> json) {
  return _Curves.fromJson(json);
}

/// @nodoc
mixin _$Curves {
  @JsonKey(name: 'AlertCurve')
  List<AlertCurve>? get alertCurve => throw _privateConstructorUsedError;
  @JsonKey(name: 'newAlertCurve')
  List<AlertCurve>? get newAlertCurve => throw _privateConstructorUsedError;

  /// Serializes this Curves to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Curves
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurvesCopyWith<Curves> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurvesCopyWith<$Res> {
  factory $CurvesCopyWith(Curves value, $Res Function(Curves) then) =
      _$CurvesCopyWithImpl<$Res, Curves>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AlertCurve') List<AlertCurve>? alertCurve,
      @JsonKey(name: 'newAlertCurve') List<AlertCurve>? newAlertCurve});
}

/// @nodoc
class _$CurvesCopyWithImpl<$Res, $Val extends Curves>
    implements $CurvesCopyWith<$Res> {
  _$CurvesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Curves
  /// with the given fields replaced by the non-null parameter values.
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
              as List<AlertCurve>?,
      newAlertCurve: freezed == newAlertCurve
          ? _value.newAlertCurve
          : newAlertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurve>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurvesImplCopyWith<$Res> implements $CurvesCopyWith<$Res> {
  factory _$$CurvesImplCopyWith(
          _$CurvesImpl value, $Res Function(_$CurvesImpl) then) =
      __$$CurvesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AlertCurve') List<AlertCurve>? alertCurve,
      @JsonKey(name: 'newAlertCurve') List<AlertCurve>? newAlertCurve});
}

/// @nodoc
class __$$CurvesImplCopyWithImpl<$Res>
    extends _$CurvesCopyWithImpl<$Res, _$CurvesImpl>
    implements _$$CurvesImplCopyWith<$Res> {
  __$$CurvesImplCopyWithImpl(
      _$CurvesImpl _value, $Res Function(_$CurvesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Curves
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertCurve = freezed,
    Object? newAlertCurve = freezed,
  }) {
    return _then(_$CurvesImpl(
      alertCurve: freezed == alertCurve
          ? _value._alertCurve
          : alertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurve>?,
      newAlertCurve: freezed == newAlertCurve
          ? _value._newAlertCurve
          : newAlertCurve // ignore: cast_nullable_to_non_nullable
              as List<AlertCurve>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurvesImpl implements _Curves {
  _$CurvesImpl(
      {@JsonKey(name: 'AlertCurve') final List<AlertCurve>? alertCurve,
      @JsonKey(name: 'newAlertCurve') final List<AlertCurve>? newAlertCurve})
      : _alertCurve = alertCurve,
        _newAlertCurve = newAlertCurve;

  factory _$CurvesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurvesImplFromJson(json);

  final List<AlertCurve>? _alertCurve;
  @override
  @JsonKey(name: 'AlertCurve')
  List<AlertCurve>? get alertCurve {
    final value = _alertCurve;
    if (value == null) return null;
    if (_alertCurve is EqualUnmodifiableListView) return _alertCurve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AlertCurve>? _newAlertCurve;
  @override
  @JsonKey(name: 'newAlertCurve')
  List<AlertCurve>? get newAlertCurve {
    final value = _newAlertCurve;
    if (value == null) return null;
    if (_newAlertCurve is EqualUnmodifiableListView) return _newAlertCurve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Curves(alertCurve: $alertCurve, newAlertCurve: $newAlertCurve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurvesImpl &&
            const DeepCollectionEquality()
                .equals(other._alertCurve, _alertCurve) &&
            const DeepCollectionEquality()
                .equals(other._newAlertCurve, _newAlertCurve));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alertCurve),
      const DeepCollectionEquality().hash(_newAlertCurve));

  /// Create a copy of Curves
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurvesImplCopyWith<_$CurvesImpl> get copyWith =>
      __$$CurvesImplCopyWithImpl<_$CurvesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurvesImplToJson(
      this,
    );
  }
}

abstract class _Curves implements Curves {
  factory _Curves(
      {@JsonKey(name: 'AlertCurve') final List<AlertCurve>? alertCurve,
      @JsonKey(name: 'newAlertCurve')
      final List<AlertCurve>? newAlertCurve}) = _$CurvesImpl;

  factory _Curves.fromJson(Map<String, dynamic> json) = _$CurvesImpl.fromJson;

  @override
  @JsonKey(name: 'AlertCurve')
  List<AlertCurve>? get alertCurve;
  @override
  @JsonKey(name: 'newAlertCurve')
  List<AlertCurve>? get newAlertCurve;

  /// Create a copy of Curves
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurvesImplCopyWith<_$CurvesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
