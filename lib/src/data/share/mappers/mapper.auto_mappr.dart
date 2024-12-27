// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../domain/share/models/group.dart' as _i5;
import '../../../domain/share/models/partograph_group.dart' as _i9;
import '../../../domain/share/models/partograph_group_item.dart' as _i7;
import '../../../domain/share/models/partograph_group_share.dart' as _i11;
import '../../../domain/share/models/partograph_share.dart' as _i3;
import '../../../domain/share/models/search_user_group.dart' as _i13;
import '../model/group_response/group_response.dart' as _i4;
import '../model/partograph_group_item_response/partograph_group_item_response.dart'
    as _i6;
import '../model/partograph_group_response/partograph_group_response.dart'
    as _i8;
import '../model/partograph_group_share_response/partograph_group_share_response.dart'
    as _i10;
import '../model/partograph_share_response/partograph_share_response.dart'
    as _i2;
import '../model/search_user_group_response/search_user_group_response.dart'
    as _i12;

/// {@template package:birthflow_movil/src/data/share/mappers/mapper.dart}
/// Available mappings:
/// - `PartographShareResponse` → `PartographShare`.
/// - `GroupResponse` → `Group`.
/// - `PartographGroupItemResponse` → `PartographGroupItem`.
/// - `PartographGroupResponse` → `PartographGroup`.
/// - `PartographGroupShareResponse` → `PartographGroupShare`.
/// - `SearchUserGroupResponse` → `SearchUserGroup`.
/// {@endtemplate}
class $ShareApiMapper implements _i1.AutoMapprInterface {
  const $ShareApiMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.PartographShareResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographShareResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.PartographShare>() ||
            targetTypeOf == _typeOf<_i3.PartographShare?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.GroupResponse>() ||
            sourceTypeOf == _typeOf<_i4.GroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.Group>() ||
            targetTypeOf == _typeOf<_i5.Group?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.PartographGroupItemResponse>() ||
            sourceTypeOf == _typeOf<_i6.PartographGroupItemResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.PartographGroupItem>() ||
            targetTypeOf == _typeOf<_i7.PartographGroupItem?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i8.PartographGroupResponse>() ||
            sourceTypeOf == _typeOf<_i8.PartographGroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.PartographGroup>() ||
            targetTypeOf == _typeOf<_i9.PartographGroup?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i10.PartographGroupShareResponse>() ||
            sourceTypeOf == _typeOf<_i10.PartographGroupShareResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.PartographGroupShare>() ||
            targetTypeOf == _typeOf<_i11.PartographGroupShare?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i12.SearchUserGroupResponse>() ||
            sourceTypeOf == _typeOf<_i12.SearchUserGroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i13.SearchUserGroup>() ||
            targetTypeOf == _typeOf<_i13.SearchUserGroup?>())) {
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.PartographShareResponse>() ||
            sourceTypeOf == _typeOf<_i2.PartographShareResponse?>()) &&
        (targetTypeOf == _typeOf<_i3.PartographShare>() ||
            targetTypeOf == _typeOf<_i3.PartographShare?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$PartographShareResponse_To__i3$PartographShare(
          (model as _i2.PartographShareResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.GroupResponse>() ||
            sourceTypeOf == _typeOf<_i4.GroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i5.Group>() ||
            targetTypeOf == _typeOf<_i5.Group?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$GroupResponse_To__i5$Group((model as _i4.GroupResponse?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.PartographGroupItemResponse>() ||
            sourceTypeOf == _typeOf<_i6.PartographGroupItemResponse?>()) &&
        (targetTypeOf == _typeOf<_i7.PartographGroupItem>() ||
            targetTypeOf == _typeOf<_i7.PartographGroupItem?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$PartographGroupItemResponse_To__i7$PartographGroupItem(
          (model as _i6.PartographGroupItemResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i8.PartographGroupResponse>() ||
            sourceTypeOf == _typeOf<_i8.PartographGroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i9.PartographGroup>() ||
            targetTypeOf == _typeOf<_i9.PartographGroup?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i8$PartographGroupResponse_To__i9$PartographGroup(
          (model as _i8.PartographGroupResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i10.PartographGroupShareResponse>() ||
            sourceTypeOf == _typeOf<_i10.PartographGroupShareResponse?>()) &&
        (targetTypeOf == _typeOf<_i11.PartographGroupShare>() ||
            targetTypeOf == _typeOf<_i11.PartographGroupShare?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i10$PartographGroupShareResponse_To__i11$PartographGroupShare(
          (model as _i10.PartographGroupShareResponse?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i12.SearchUserGroupResponse>() ||
            sourceTypeOf == _typeOf<_i12.SearchUserGroupResponse?>()) &&
        (targetTypeOf == _typeOf<_i13.SearchUserGroup>() ||
            targetTypeOf == _typeOf<_i13.SearchUserGroup?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i12$SearchUserGroupResponse_To__i13$SearchUserGroup(
          (model as _i12.SearchUserGroupResponse?)) as TARGET);
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
  /// {@macro package:birthflow_movil/src/data/share/mappers/mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.PartographShare _map__i2$PartographShareResponse_To__i3$PartographShare(
      _i2.PartographShareResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographShareResponse → PartographShare failed because PartographShareResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographShareResponse, PartographShare> to handle null values during mapping.');
    }
    return _i3.PartographShare(
      id: model.id,
      partographId: model.partographId,
      userId: model.userId,
      groupId: model.groupId,
      permissionTypeId: model.permissionTypeId,
      createdAt: model.createdAt,
      owner: model.owner,
    );
  }

  _i5.Group _map__i4$GroupResponse_To__i5$Group(_i4.GroupResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping GroupResponse → Group failed because GroupResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<GroupResponse, Group> to handle null values during mapping.');
    }
    return _i5.Group(
      id: model.id,
      groupName: model.groupName,
      isPublic: model.isPublic,
      isDeleted: model.isDeleted,
      createdBy: model.createdBy,
      createdAt: model.createdAt,
      deletedAt: model.deletedAt,
    );
  }

  _i7.PartographGroupItem
      _map__i6$PartographGroupItemResponse_To__i7$PartographGroupItem(
          _i6.PartographGroupItemResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographGroupItemResponse → PartographGroupItem failed because PartographGroupItemResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographGroupItemResponse, PartographGroupItem> to handle null values during mapping.');
    }
    return _i7.PartographGroupItem(
      partographId: model.partographId,
      partographGroupId: model.partographGroupId,
      createdAt: model.createdAt,
    );
  }

  _i9.PartographGroup _map__i8$PartographGroupResponse_To__i9$PartographGroup(
      _i8.PartographGroupResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographGroupResponse → PartographGroup failed because PartographGroupResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographGroupResponse, PartographGroup> to handle null values during mapping.');
    }
    return _i9.PartographGroup(
      id: model.id,
      name: model.name,
      description: model.description,
      createdBy: model.createdBy,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      isDeleted: model.isDeleted,
      deletedAt: model.deletedAt,
    );
  }

  _i11.PartographGroupShare
      _map__i10$PartographGroupShareResponse_To__i11$PartographGroupShare(
          _i10.PartographGroupShareResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PartographGroupShareResponse → PartographGroupShare failed because PartographGroupShareResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PartographGroupShareResponse, PartographGroupShare> to handle null values during mapping.');
    }
    return _i11.PartographGroupShare(
      id: model.id,
      partographGroupId: model.partographGroupId,
      userId: model.userId,
      groupId: model.groupId,
      permissionTypeId: model.permissionTypeId,
      createdAt: model.createdAt,
    );
  }

  _i13.SearchUserGroup
      _map__i12$SearchUserGroupResponse_To__i13$SearchUserGroup(
          _i12.SearchUserGroupResponse? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping SearchUserGroupResponse → SearchUserGroup failed because SearchUserGroupResponse was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<SearchUserGroupResponse, SearchUserGroup> to handle null values during mapping.');
    }
    return _i13.SearchUserGroup(
      name: model.name,
      userId: model.userId,
      groupId: model.groupId,
      type: model.type,
    );
  }
}
