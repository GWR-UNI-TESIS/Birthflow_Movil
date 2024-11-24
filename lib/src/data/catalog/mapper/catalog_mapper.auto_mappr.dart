// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../domain/catalog/entities/catalog.dart' as _i3;
import '../../../domain/catalog/entities/hodge_plane.dart' as _i7;
import '../../../domain/catalog/entities/position.dart' as _i5;
import '../../../domain/catalog/entities/work_time.dart' as _i9;
import '../../../domain/catalog/entities/work_time_item.dart' as _i11;
import '../models/catalog_response/catalog_response.dart' as _i2;
import '../models/hodge_plane_response/hodge_plane_response.dart' as _i6;
import '../models/position_response/position_response.dart' as _i4;
import '../models/work_time_item_response/work_time_item_response.dart' as _i10;
import '../models/work_time_response/work_time_response.dart' as _i8;

/// {@template package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
/// Available mappings:
/// - `CatalogResponse` → `Catalog`.
/// - `PositionResponse` → `Position`.
/// - `HodgePlaneResponse` → `HodgePlane`.
/// - `WorkTimeResponse` → `WorkTime`.
/// - `WorkTimeItemResponse` → `WorkTimeItem`.
/// {@endtemplate}
class $CatalogMapper implements _i1.AutoMapprInterface {
  const $CatalogMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CatalogResponse>() ||
            sourceTypeOf == _typeOf<_i2.CatalogResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Catalog>() ||
            targetTypeOf == _typeOf<_i3.Catalog?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PositionResponse>() ||
            sourceTypeOf == _typeOf<_i4.PositionResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.Position>() ||
            targetTypeOf == _typeOf<_i5.Position?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.HodgePlaneResponse>() ||
            sourceTypeOf == _typeOf<_i6.HodgePlaneResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.HodgePlane>() ||
            targetTypeOf == _typeOf<_i7.HodgePlane?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.WorkTimeResponse>() ||
            sourceTypeOf == _typeOf<_i8.WorkTimeResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.WorkTime>() ||
            targetTypeOf == _typeOf<_i9.WorkTime?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.WorkTimeItemResponse>() ||
            sourceTypeOf == _typeOf<_i10.WorkTimeItemResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.WorkTimeItem>() ||
            targetTypeOf == _typeOf<_i11.WorkTimeItem?>())) {
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.CatalogResponse>() ||
            sourceTypeOf == _typeOf<_i2.CatalogResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.Catalog>() ||
            targetTypeOf == _typeOf<_i3.Catalog?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CatalogResponse_To__i3$Catalog(
          (model as _i2.CatalogResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PositionResponse>() ||
            sourceTypeOf == _typeOf<_i4.PositionResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.Position>() ||
            targetTypeOf == _typeOf<_i5.Position?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PositionResponse_To__i5$Position(
          (model as _i4.PositionResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.HodgePlaneResponse>() ||
            sourceTypeOf == _typeOf<_i6.HodgePlaneResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.HodgePlane>() ||
            targetTypeOf == _typeOf<_i7.HodgePlane?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$HodgePlaneResponse_To__i7$HodgePlane(
          (model as _i6.HodgePlaneResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.WorkTimeResponse>() ||
            sourceTypeOf == _typeOf<_i8.WorkTimeResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.WorkTime>() ||
            targetTypeOf == _typeOf<_i9.WorkTime?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$WorkTimeResponse_To__i9$WorkTime(
          (model as _i8.WorkTimeResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.WorkTimeItemResponse>() ||
            sourceTypeOf == _typeOf<_i10.WorkTimeItemResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.WorkTimeItem>() ||
            targetTypeOf == _typeOf<_i11.WorkTimeItem?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$WorkTimeItemResponse_To__i11$WorkTimeItem(
          (model as _i10.WorkTimeItemResponse?)) as TARGET);
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
  /// {@macro package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Catalog _map__i2$CatalogResponse_To__i3$Catalog(
      _i2.CatalogResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CatalogResponse → Catalog failed because CatalogResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CatalogResponse, Catalog> to handle null values during mapping.');
    }
    return _i3.Catalog(
      hodgePlanesCatalog: model.hodgePlanesCatalog
          .map<_i7.HodgePlane>(
              (value) => _map__i6$HodgePlaneResponse_To__i7$HodgePlane(value))
          .toList(),
      positionCatalog: model.positionCatalog
          .map<_i5.Position>(
              (value) => _map__i4$PositionResponse_To__i5$Position(value))
          .toList(),
      workTimeItemsCatalog: model.workTimeItemsCatalog
          .map<_i11.WorkTimeItem>((value) =>
              _map__i10$WorkTimeItemResponse_To__i11$WorkTimeItem(value))
          .toList(),
      workTimeCatalog: model.workTimeCatalog
          .map<_i9.WorkTime>(
              (value) => _map__i8$WorkTimeResponse_To__i9$WorkTime(value))
          .toList(),
    );
  }

  _i5.Position _map__i4$PositionResponse_To__i5$Position(
      _i4.PositionResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PositionResponse → Position failed because PositionResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PositionResponse, Position> to handle null values during mapping.');
    }
    return _i5.Position(
      id: model.id,
      code: model.code,
      description: model.description,
      chartPosition: model.chartPosition,
    );
  }

  _i7.HodgePlane _map__i6$HodgePlaneResponse_To__i7$HodgePlane(
      _i6.HodgePlaneResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping HodgePlaneResponse → HodgePlane failed because HodgePlaneResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<HodgePlaneResponse, HodgePlane> to handle null values during mapping.');
    }
    return _i7.HodgePlane(
      id: model.id,
      code: model.code,
      description: model.description,
    );
  }

  _i9.WorkTime _map__i8$WorkTimeResponse_To__i9$WorkTime(
      _i8.WorkTimeResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping WorkTimeResponse → WorkTime failed because WorkTimeResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<WorkTimeResponse, WorkTime> to handle null values during mapping.');
    }
    return _i9.WorkTime(
      id: model.id,
      paridad: model.paridad,
      posicion: model.posicion,
      membrana: model.membrana,
      workTimeItems: model.workTimeItems
          .map<_i11.WorkTimeItem>((value) =>
              _map__i10$WorkTimeItemResponse_To__i11$WorkTimeItem(value))
          .toList(),
    );
  }

  _i11.WorkTimeItem _map__i10$WorkTimeItemResponse_To__i11$WorkTimeItem(
      _i10.WorkTimeItemResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping WorkTimeItemResponse → WorkTimeItem failed because WorkTimeItemResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<WorkTimeItemResponse, WorkTimeItem> to handle null values during mapping.');
    }
    return _i11.WorkTimeItem(
      id: model.id,
      workTimeId: model.workTimeId,
      cervicalDilation: model.cervicalDilation,
      time: model.time,
    );
  }
}
