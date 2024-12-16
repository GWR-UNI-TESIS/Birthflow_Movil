// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../data/partograph/models/alert_curve_response/alert_curve_response.dart'
    as _i20;
import '../../../data/partograph/models/alert_curve_response/alert_curves_response.dart'
    as _i18;
import '../../../data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart'
    as _i6;
import '../../../data/partograph/models/childbirth_note_response/childbirth_note_response.dart'
    as _i21;
import '../../../data/partograph/models/contraction_frequency_response/contraction_frequency_response.dart'
    as _i14;
import '../../../data/partograph/models/fetal_heart_rate_response/fetal_heart_rate_response.dart'
    as _i12;
import '../../../data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart'
    as _i8;
import '../../../data/partograph/models/partograph_list_response/partograph_list_response.dart'
    as _i4;
import '../../../data/partograph/models/partograph_response/partograph_response.dart'
    as _i2;
import '../../../data/partograph/models/partograph_state_response/partograph_state_response.dart'
    as _i16;
import '../../../data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart'
    as _i10;
import '../entities/alert_curves.dart' as _i19;
import '../entities/cervical_dilation.dart' as _i7;
import '../entities/childbirth_note.dart' as _i22;
import '../entities/contraction_frequency.dart' as _i15;
import '../entities/fetal_heart_rate.dart' as _i13;
import '../entities/medical_surveillance_table.dart' as _i9;
import '../entities/partograph.dart' as _i3;
import '../entities/partograph_list.dart' as _i5;
import '../entities/partograph_state.dart' as _i17;
import '../entities/presentation_position_variety.dart' as _i11;

/// {@template package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
/// Available mappings:
/// - `PartographResponse` → `Partograph`.
/// - `PartographListResponse` → `PartographList`.
/// - `CervicalDilationResponse` → `CervicalDilation`.
/// - `MedicalSurveillanceTableResponse` → `MedicalSurveillanceTable`.
/// - `PresentationPositionVarietyEntityResponse` → `PresentationPositionVariety`.
/// - `FetalHeartRateResponse` → `FetalHeartRate`.
/// - `ContractionFrequencyResponse` → `ContractionFrequency`.
/// - `PartographStateResponse` → `PartographState`.
/// - `AlertCurvesResponse` → `AlertCurves`.
/// - `AlertCurveResponse` → `AlertCurve`.
/// - `ChildbirthNoteResponse` → `ChildbirthNote`.
/// {@endtemplate}
class $Mappr implements _i1.AutoMapprInterface {
  const $Mappr();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PartographResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Partograph>() ||
            targetTypeOf == _typeOf<_i3.Partograph?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PartographListResponse>() ||
            sourceTypeOf == _typeOf<_i4.PartographListResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.PartographList>() ||
            targetTypeOf == _typeOf<_i5.PartographList?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.CervicalDilationResponse>() ||
            sourceTypeOf == _typeOf<_i6.CervicalDilationResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.CervicalDilation>() ||
            targetTypeOf == _typeOf<_i7.CervicalDilation?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.MedicalSurveillanceTableResponse>() ||
            sourceTypeOf == _typeOf<_i8.MedicalSurveillanceTableResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.MedicalSurveillanceTable>() ||
            targetTypeOf == _typeOf<_i9.MedicalSurveillanceTable?>())) {
      return true;
    }
    if ((sourceTypeOf ==
                _typeOf<_i10.PresentationPositionVarietyEntityResponse>() ||
            sourceTypeOf ==
                _typeOf<_i10.PresentationPositionVarietyEntityResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.PresentationPositionVariety>() ||
            targetTypeOf == _typeOf<_i11.PresentationPositionVariety?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.FetalHeartRateResponse>() ||
            sourceTypeOf == _typeOf<_i12.FetalHeartRateResponse?>()) &&
        (targetTypeOf == _typeOf<_i13.FetalHeartRate>() ||
            targetTypeOf == _typeOf<_i13.FetalHeartRate?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i14.ContractionFrequencyResponse>() ||
            sourceTypeOf == _typeOf<_i14.ContractionFrequencyResponse?>()) &&
        (targetTypeOf == _typeOf<_i15.ContractionFrequency>() ||
            targetTypeOf == _typeOf<_i15.ContractionFrequency?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i16.PartographStateResponse>() ||
            sourceTypeOf == _typeOf<_i16.PartographStateResponse?>()) &&
        (targetTypeOf == _typeOf<_i17.PartographState>() ||
            targetTypeOf == _typeOf<_i17.PartographState?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i18.AlertCurvesResponse>() ||
            sourceTypeOf == _typeOf<_i18.AlertCurvesResponse?>()) &&
        (targetTypeOf == _typeOf<_i19.AlertCurves>() ||
            targetTypeOf == _typeOf<_i19.AlertCurves?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i20.AlertCurveResponse>() ||
            sourceTypeOf == _typeOf<_i20.AlertCurveResponse?>()) &&
        (targetTypeOf == _typeOf<_i19.AlertCurve>() ||
            targetTypeOf == _typeOf<_i19.AlertCurve?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i21.ChildbirthNoteResponse>() ||
            sourceTypeOf == _typeOf<_i21.ChildbirthNoteResponse?>()) &&
        (targetTypeOf == _typeOf<_i22.ChildbirthNote>() ||
            targetTypeOf == _typeOf<_i22.ChildbirthNote?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(
        model,
        onMappingError: onMappingError,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
          (item) => _safeConvert(item, onMappingError: onMappingError));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PartographResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Partograph>() ||
            targetTypeOf == _typeOf<_i3.Partograph?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PartographResponse_To__i3$Partograph(
          (model as _i2.PartographResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PartographListResponse>() ||
            sourceTypeOf == _typeOf<_i4.PartographListResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.PartographList>() ||
            targetTypeOf == _typeOf<_i5.PartographList?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PartographListResponse_To__i5$PartographList(
          (model as _i4.PartographListResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.CervicalDilationResponse>() ||
            sourceTypeOf == _typeOf<_i6.CervicalDilationResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.CervicalDilation>() ||
            targetTypeOf == _typeOf<_i7.CervicalDilation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$CervicalDilationResponse_To__i7$CervicalDilation(
          (model as _i6.CervicalDilationResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.MedicalSurveillanceTableResponse>() ||
            sourceTypeOf == _typeOf<_i8.MedicalSurveillanceTableResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.MedicalSurveillanceTable>() ||
            targetTypeOf == _typeOf<_i9.MedicalSurveillanceTable?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$MedicalSurveillanceTableResponse_To__i9$MedicalSurveillanceTable(
          (model as _i8.MedicalSurveillanceTableResponse?)) as TARGET);
    }
    if ((sourceTypeOf ==
                _typeOf<_i10.PresentationPositionVarietyEntityResponse>() ||
            sourceTypeOf ==
                _typeOf<_i10.PresentationPositionVarietyEntityResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.PresentationPositionVariety>() ||
            targetTypeOf == _typeOf<_i11.PresentationPositionVariety?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$PresentationPositionVarietyEntityResponse_To__i11$PresentationPositionVariety(
              (model as _i10.PresentationPositionVarietyEntityResponse?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.FetalHeartRateResponse>() ||
            sourceTypeOf == _typeOf<_i12.FetalHeartRateResponse?>()) &&
        (targetTypeOf == _typeOf<_i13.FetalHeartRate>() ||
            targetTypeOf == _typeOf<_i13.FetalHeartRate?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$FetalHeartRateResponse_To__i13$FetalHeartRate(
          (model as _i12.FetalHeartRateResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i14.ContractionFrequencyResponse>() ||
            sourceTypeOf == _typeOf<_i14.ContractionFrequencyResponse?>()) &&
        (targetTypeOf == _typeOf<_i15.ContractionFrequency>() ||
            targetTypeOf == _typeOf<_i15.ContractionFrequency?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i14$ContractionFrequencyResponse_To__i15$ContractionFrequency(
          (model as _i14.ContractionFrequencyResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i16.PartographStateResponse>() ||
            sourceTypeOf == _typeOf<_i16.PartographStateResponse?>()) &&
        (targetTypeOf == _typeOf<_i17.PartographState>() ||
            targetTypeOf == _typeOf<_i17.PartographState?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i16$PartographStateResponse_To__i17$PartographState(
          (model as _i16.PartographStateResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i18.AlertCurvesResponse>() ||
            sourceTypeOf == _typeOf<_i18.AlertCurvesResponse?>()) &&
        (targetTypeOf == _typeOf<_i19.AlertCurves>() ||
            targetTypeOf == _typeOf<_i19.AlertCurves?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i18$AlertCurvesResponse_To__i19$AlertCurves(
          (model as _i18.AlertCurvesResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i20.AlertCurveResponse>() ||
            sourceTypeOf == _typeOf<_i20.AlertCurveResponse?>()) &&
        (targetTypeOf == _typeOf<_i19.AlertCurve>() ||
            targetTypeOf == _typeOf<_i19.AlertCurve?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i20$AlertCurveResponse_To__i19$AlertCurve(
          (model as _i20.AlertCurveResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i21.ChildbirthNoteResponse>() ||
            sourceTypeOf == _typeOf<_i21.ChildbirthNoteResponse?>()) &&
        (targetTypeOf == _typeOf<_i22.ChildbirthNote>() ||
            targetTypeOf == _typeOf<_i22.ChildbirthNote?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i21$ChildbirthNoteResponse_To__i22$ChildbirthNote(
          (model as _i21.ChildbirthNoteResponse?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    try {
      return _convert(
        model,
        canReturnNull: true,
      );
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:birthflow_movil/src/domain/partograph/mappers/mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Partograph _map__i2$PartographResponse_To__i3$Partograph(
      _i2.PartographResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographResponse → Partograph failed because PartographResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographResponse, Partograph> to handle null values during mapping.');
    }
    return _i3.Partograph(
      partographId: model.partographId,
      name: model.name,
      recordName: model.recordName,
      date: model.date,
      observation: model.observation,
      workTime: model.workTime,
      cervicalDilations: model.cervicalDilations
          ?.map<_i7.CervicalDilation>((value) =>
              _map__i6$CervicalDilationResponse_To__i7$CervicalDilation(value))
          .toList(),
      medicalSurveillanceTable: model.medicalSurveillanceTable
          ?.map<_i9.MedicalSurveillanceTable>((value) =>
              _map__i8$MedicalSurveillanceTableResponse_To__i9$MedicalSurveillanceTable(
                  value))
          .toList(),
      presentationPositionVarieties: model.presentationPositionVarieties
          ?.map<_i11.PresentationPositionVariety>((value) =>
              _map__i10$PresentationPositionVarietyEntityResponse_To__i11$PresentationPositionVariety(
                  value))
          .toList(),
      fetalHeartRates: model.fetalHeartRates
          ?.map<_i13.FetalHeartRate>((value) =>
              _map__i12$FetalHeartRateResponse_To__i13$FetalHeartRate(value))
          .toList(),
      contractionFrequencies: model.contractionFrequencies
          ?.map<_i15.ContractionFrequency>((value) =>
              _map__i14$ContractionFrequencyResponse_To__i15$ContractionFrequency(
                  value))
          .toList(),
      childbirthNote:
          _map__i21$ChildbirthNoteResponse_To__i22$ChildbirthNote_Nullable(
              model.childbirthNote),
      curves: _map__i18$AlertCurvesResponse_To__i19$AlertCurves_Nullable(
          model.curves),
    );
  }

  _i5.PartographList _map__i4$PartographListResponse_To__i5$PartographList(
      _i4.PartographListResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographListResponse → PartographList failed because PartographListResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographListResponse, PartographList> to handle null values during mapping.');
    }
    return _i5.PartographList(
      partographId: model.partographId,
      name: model.name,
      recordName: model.recordName,
      date: model.date,
      observation: model.observation,
      createdAt: model.createdAt,
      createdBy: model.createdBy,
      updateBy: model.updateBy,
      updateAt: model.updateAt,
      stateId: model.stateId,
      userId: model.userId,
      isAchived: model.isAchived,
      set: model.set,
      silenced: model.silenced,
      favorite: model.favorite,
    );
  }

  _i7.CervicalDilation
      _map__i6$CervicalDilationResponse_To__i7$CervicalDilation(
          _i6.CervicalDilationResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CervicalDilationResponse → CervicalDilation failed because CervicalDilationResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CervicalDilationResponse, CervicalDilation> to handle null values during mapping.');
    }
    return _i7.CervicalDilation(
      id: model.id,
      partographId: model.partographId,
      value: model.value,
      hour: model.hour,
      remOrRam: model.remOrRam,
    );
  }

  _i9.MedicalSurveillanceTable
      _map__i8$MedicalSurveillanceTableResponse_To__i9$MedicalSurveillanceTable(
          _i8.MedicalSurveillanceTableResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MedicalSurveillanceTableResponse → MedicalSurveillanceTable failed because MedicalSurveillanceTableResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MedicalSurveillanceTableResponse, MedicalSurveillanceTable> to handle null values during mapping.');
    }
    return _i9.MedicalSurveillanceTable(
      id: model.id,
      partographId: model.partographId,
      letter: model.letter,
      maternalPosition: model.maternalPosition,
      arterialPressure: model.arterialPressure,
      maternalPulse: model.maternalPulse,
      fetalHeartRate: model.fetalHeartRate,
      contractionsDuration: model.contractionsDuration,
      frequencyContractions: model.frequencyContractions,
      pain: model.pain,
      time: model.time,
    );
  }

  _i11.PresentationPositionVariety
      _map__i10$PresentationPositionVarietyEntityResponse_To__i11$PresentationPositionVariety(
          _i10.PresentationPositionVarietyEntityResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PresentationPositionVarietyEntityResponse → PresentationPositionVariety failed because PresentationPositionVarietyEntityResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PresentationPositionVarietyEntityResponse, PresentationPositionVariety> to handle null values during mapping.');
    }
    return _i11.PresentationPositionVariety(
      id: model.id,
      partographId: model.partographId,
      hodgePlane: model.hodgePlane,
      position: model.position,
      time: model.time,
    );
  }

  _i13.FetalHeartRate _map__i12$FetalHeartRateResponse_To__i13$FetalHeartRate(
      _i12.FetalHeartRateResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FetalHeartRateResponse → FetalHeartRate failed because FetalHeartRateResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FetalHeartRateResponse, FetalHeartRate> to handle null values during mapping.');
    }
    return _i13.FetalHeartRate(
      id: model.id,
      partographId: model.partographId,
      value: model.value,
      time: model.time,
    );
  }

  _i15.ContractionFrequency
      _map__i14$ContractionFrequencyResponse_To__i15$ContractionFrequency(
          _i14.ContractionFrequencyResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ContractionFrequencyResponse → ContractionFrequency failed because ContractionFrequencyResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ContractionFrequencyResponse, ContractionFrequency> to handle null values during mapping.');
    }
    return _i15.ContractionFrequency(
      id: model.id,
      partographId: model.partographId,
      value: model.value,
      time: model.time,
    );
  }

  _i17.PartographState
      _map__i16$PartographStateResponse_To__i17$PartographState(
          _i16.PartographStateResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographStateResponse → PartographState failed because PartographStateResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographStateResponse, PartographState> to handle null values during mapping.');
    }
    return _i17.PartographState(
      id: model.id,
      partographId: model.partographId,
      isAchived: model.isAchived,
      set: model.set,
      silenced: model.silenced,
      favorite: model.favorite,
    );
  }

  _i19.AlertCurves _map__i18$AlertCurvesResponse_To__i19$AlertCurves(
      _i18.AlertCurvesResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AlertCurvesResponse → AlertCurves failed because AlertCurvesResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AlertCurvesResponse, AlertCurves> to handle null values during mapping.');
    }
    return _i19.AlertCurves(
      alertCurve: model.alertCurve
          ?.map<_i19.AlertCurve>(
              (value) => _map__i20$AlertCurveResponse_To__i19$AlertCurve(value))
          .toList(),
      newAlertCurve: model.newAlertCurve
          ?.map<_i19.AlertCurve>(
              (value) => _map__i20$AlertCurveResponse_To__i19$AlertCurve(value))
          .toList(),
    );
  }

  _i19.AlertCurve _map__i20$AlertCurveResponse_To__i19$AlertCurve(
      _i20.AlertCurveResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping AlertCurveResponse → AlertCurve failed because AlertCurveResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<AlertCurveResponse, AlertCurve> to handle null values during mapping.');
    }
    return _i19.AlertCurve(
      cervicalDilation: model.cervicalDilation,
      time: model.time,
    );
  }

  _i22.ChildbirthNote _map__i21$ChildbirthNoteResponse_To__i22$ChildbirthNote(
      _i21.ChildbirthNoteResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ChildbirthNoteResponse → ChildbirthNote failed because ChildbirthNoteResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ChildbirthNoteResponse, ChildbirthNote> to handle null values during mapping.');
    }
    return _i22.ChildbirthNote(
      partographId: model.partographId,
      description: model.description,
      hour: model.hour,
      sex: model.sex,
      apgar: model.apgar,
      temperature: model.temperature,
      caputto: model.caputto,
      circular: model.circular,
      lamniotico: model.lamniotico,
      miccion: model.miccion,
      meconio: model.meconio,
      pa: model.pa,
      expulsivo: model.expulsivo,
      placenta: model.placenta,
      alumbramiento: model.alumbramiento,
      huellaPlantar: model.huellaPlantar,
      pc: model.pc,
      talla: model.talla,
      brazalete: model.brazalete,
      huellaDig: model.huellaDig,
      createAt: model.createAt,
      updateAt: model.updateAt,
      deleteAt: model.deleteAt,
      createdBy: model.createdBy,
      updateBy: model.updateBy,
      deleteBy: model.deleteBy,
    );
  }

  _i19.AlertCurves? _map__i18$AlertCurvesResponse_To__i19$AlertCurves_Nullable(
      _i18.AlertCurvesResponse? input) {
    final model = input;
    if (model == null) {
      return null;
    }
    return _i19.AlertCurves(
      alertCurve: model.alertCurve
          ?.map<_i19.AlertCurve>(
              (value) => _map__i20$AlertCurveResponse_To__i19$AlertCurve(value))
          .toList(),
      newAlertCurve: model.newAlertCurve
          ?.map<_i19.AlertCurve>(
              (value) => _map__i20$AlertCurveResponse_To__i19$AlertCurve(value))
          .toList(),
    );
  }

  _i22.ChildbirthNote?
      _map__i21$ChildbirthNoteResponse_To__i22$ChildbirthNote_Nullable(
          _i21.ChildbirthNoteResponse? input) {
    final model = input;
    if (model == null) {
      return null;
    }
    return _i22.ChildbirthNote(
      partographId: model.partographId,
      description: model.description,
      hour: model.hour,
      sex: model.sex,
      apgar: model.apgar,
      temperature: model.temperature,
      caputto: model.caputto,
      circular: model.circular,
      lamniotico: model.lamniotico,
      miccion: model.miccion,
      meconio: model.meconio,
      pa: model.pa,
      expulsivo: model.expulsivo,
      placenta: model.placenta,
      alumbramiento: model.alumbramiento,
      huellaPlantar: model.huellaPlantar,
      pc: model.pc,
      talla: model.talla,
      brazalete: model.brazalete,
      huellaDig: model.huellaDig,
      createAt: model.createAt,
      updateAt: model.updateAt,
      deleteAt: model.deleteAt,
      createdBy: model.createdBy,
      updateBy: model.updateBy,
      deleteBy: model.deleteBy,
    );
  }
}
