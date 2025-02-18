// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../domain/partograph_history/models/partograph_audit_log/partograph_audit_log.dart'
    as _i3;
import '../../../domain/partograph_history/models/partograph_version/partograph_version.dart'
    as _i5;
import '../models/partograph_audit_log/partograph_audit_log_response.dart'
    as _i2;
import '../models/partograph_version/partograph_version_response.dart' as _i4;
import 'partograph_history_mapper.dart' as _i6;

/// {@template package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
/// Available mappings:
/// - `PartographAuditLogResponse` → `PartographAuditLog`.
/// - `PartographVersionResponse` → `PartographVersion`.
/// {@endtemplate}
class $PartographHistoryMapper implements _i1.AutoMapprInterface {
  const $PartographHistoryMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PartographAuditLogResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographAuditLogResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.PartographAuditLog>() ||
            targetTypeOf == _typeOf<_i3.PartographAuditLog?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.PartographVersionResponse>() ||
            sourceTypeOf == _typeOf<_i4.PartographVersionResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.PartographVersion>() ||
            targetTypeOf == _typeOf<_i5.PartographVersion?>())) {
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.PartographAuditLogResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographAuditLogResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.PartographAuditLog>() ||
            targetTypeOf == _typeOf<_i3.PartographAuditLog?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PartographAuditLogResponse_To__i3$PartographAuditLog(
          (model as _i2.PartographAuditLogResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.PartographVersionResponse>() ||
            sourceTypeOf == _typeOf<_i4.PartographVersionResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.PartographVersion>() ||
            targetTypeOf == _typeOf<_i5.PartographVersion?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$PartographVersionResponse_To__i5$PartographVersion(
          (model as _i4.PartographVersionResponse?)) as TARGET);
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
  /// {@macro package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.PartographAuditLog
      _map__i2$PartographAuditLogResponse_To__i3$PartographAuditLog(
          _i2.PartographAuditLogResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographAuditLogResponse → PartographAuditLog failed because PartographAuditLogResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographAuditLogResponse, PartographAuditLog> to handle null values during mapping.');
    }
    return _i3.PartographAuditLog(
      id: model.id,
      partographId: model.partographId,
      entityName: model.entityName,
      fieldName: model.fieldName,
      oldValue: model.oldValue,
      newValue: model.newValue,
      changedAt: model.changedAt,
      changedBy: model.changedBy,
      partographVersionId: model.partographVersionId,
    );
  }

  _i5.PartographVersion
      _map__i4$PartographVersionResponse_To__i5$PartographVersion(
          _i4.PartographVersionResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographVersionResponse → PartographVersion failed because PartographVersionResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographVersionResponse, PartographVersion> to handle null values during mapping.');
    }
    return _i5.PartographVersion(
      id: model.id,
      partographId: model.partographId,
      changedAt: model.changedAt,
      changedBy: model.changedBy,
      partographDataJson: _i6.PartographHistoryMapper.jsonStringToMap(model),
      auditLogs: model.auditLogs
          ?.map<_i3.PartographAuditLog>((value) =>
              _map__i2$PartographAuditLogResponse_To__i3$PartographAuditLog(
                  value))
          .toList(),
    );
  }
}
