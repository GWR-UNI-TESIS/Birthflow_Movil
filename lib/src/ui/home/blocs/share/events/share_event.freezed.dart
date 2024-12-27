// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShareEvent {
  String get partographId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) getAsignUserGroup,
    required TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)
        asignUserGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? getAsignUserGroup,
    TResult? Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? getAsignUserGroup,
    TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAsignUserGroupEvent value) getAsignUserGroup,
    required TResult Function(AsignUserGroupEvent value) asignUserGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult? Function(AsignUserGroupEvent value)? asignUserGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult Function(AsignUserGroupEvent value)? asignUserGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareEventCopyWith<ShareEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareEventCopyWith<$Res> {
  factory $ShareEventCopyWith(
          ShareEvent value, $Res Function(ShareEvent) then) =
      _$ShareEventCopyWithImpl<$Res, ShareEvent>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class _$ShareEventCopyWithImpl<$Res, $Val extends ShareEvent>
    implements $ShareEventCopyWith<$Res> {
  _$ShareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAsignUserGroupEventImplCopyWith<$Res>
    implements $ShareEventCopyWith<$Res> {
  factory _$$GetAsignUserGroupEventImplCopyWith(
          _$GetAsignUserGroupEventImpl value,
          $Res Function(_$GetAsignUserGroupEventImpl) then) =
      __$$GetAsignUserGroupEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$GetAsignUserGroupEventImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$GetAsignUserGroupEventImpl>
    implements _$$GetAsignUserGroupEventImplCopyWith<$Res> {
  __$$GetAsignUserGroupEventImplCopyWithImpl(
      _$GetAsignUserGroupEventImpl _value,
      $Res Function(_$GetAsignUserGroupEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$GetAsignUserGroupEventImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAsignUserGroupEventImpl implements GetAsignUserGroupEvent {
  const _$GetAsignUserGroupEventImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'ShareEvent.getAsignUserGroup(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAsignUserGroupEventImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAsignUserGroupEventImplCopyWith<_$GetAsignUserGroupEventImpl>
      get copyWith => __$$GetAsignUserGroupEventImplCopyWithImpl<
          _$GetAsignUserGroupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) getAsignUserGroup,
    required TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)
        asignUserGroup,
  }) {
    return getAsignUserGroup(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? getAsignUserGroup,
    TResult? Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
  }) {
    return getAsignUserGroup?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? getAsignUserGroup,
    TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
    required TResult orElse(),
  }) {
    if (getAsignUserGroup != null) {
      return getAsignUserGroup(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAsignUserGroupEvent value) getAsignUserGroup,
    required TResult Function(AsignUserGroupEvent value) asignUserGroup,
  }) {
    return getAsignUserGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult? Function(AsignUserGroupEvent value)? asignUserGroup,
  }) {
    return getAsignUserGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult Function(AsignUserGroupEvent value)? asignUserGroup,
    required TResult orElse(),
  }) {
    if (getAsignUserGroup != null) {
      return getAsignUserGroup(this);
    }
    return orElse();
  }
}

abstract class GetAsignUserGroupEvent implements ShareEvent {
  const factory GetAsignUserGroupEvent({required final String partographId}) =
      _$GetAsignUserGroupEventImpl;

  @override
  String get partographId;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAsignUserGroupEventImplCopyWith<_$GetAsignUserGroupEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsignUserGroupEventImplCopyWith<$Res>
    implements $ShareEventCopyWith<$Res> {
  factory _$$AsignUserGroupEventImplCopyWith(_$AsignUserGroupEventImpl value,
          $Res Function(_$AsignUserGroupEventImpl) then) =
      __$$AsignUserGroupEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partographId,
      int permissionTypeId,
      List<SearchUserGroup> searchUserGroupDtos});
}

/// @nodoc
class __$$AsignUserGroupEventImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$AsignUserGroupEventImpl>
    implements _$$AsignUserGroupEventImplCopyWith<$Res> {
  __$$AsignUserGroupEventImplCopyWithImpl(_$AsignUserGroupEventImpl _value,
      $Res Function(_$AsignUserGroupEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? permissionTypeId = null,
    Object? searchUserGroupDtos = null,
  }) {
    return _then(_$AsignUserGroupEventImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      searchUserGroupDtos: null == searchUserGroupDtos
          ? _value._searchUserGroupDtos
          : searchUserGroupDtos // ignore: cast_nullable_to_non_nullable
              as List<SearchUserGroup>,
    ));
  }
}

/// @nodoc

class _$AsignUserGroupEventImpl implements AsignUserGroupEvent {
  const _$AsignUserGroupEventImpl(
      {required this.partographId,
      required this.permissionTypeId,
      required final List<SearchUserGroup> searchUserGroupDtos})
      : _searchUserGroupDtos = searchUserGroupDtos;

  @override
  final String partographId;
  @override
  final int permissionTypeId;
  final List<SearchUserGroup> _searchUserGroupDtos;
  @override
  List<SearchUserGroup> get searchUserGroupDtos {
    if (_searchUserGroupDtos is EqualUnmodifiableListView)
      return _searchUserGroupDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchUserGroupDtos);
  }

  @override
  String toString() {
    return 'ShareEvent.asignUserGroup(partographId: $partographId, permissionTypeId: $permissionTypeId, searchUserGroupDtos: $searchUserGroupDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsignUserGroupEventImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId) &&
            const DeepCollectionEquality()
                .equals(other._searchUserGroupDtos, _searchUserGroupDtos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId, permissionTypeId,
      const DeepCollectionEquality().hash(_searchUserGroupDtos));

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsignUserGroupEventImplCopyWith<_$AsignUserGroupEventImpl> get copyWith =>
      __$$AsignUserGroupEventImplCopyWithImpl<_$AsignUserGroupEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) getAsignUserGroup,
    required TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)
        asignUserGroup,
  }) {
    return asignUserGroup(partographId, permissionTypeId, searchUserGroupDtos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? getAsignUserGroup,
    TResult? Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
  }) {
    return asignUserGroup?.call(
        partographId, permissionTypeId, searchUserGroupDtos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? getAsignUserGroup,
    TResult Function(String partographId, int permissionTypeId,
            List<SearchUserGroup> searchUserGroupDtos)?
        asignUserGroup,
    required TResult orElse(),
  }) {
    if (asignUserGroup != null) {
      return asignUserGroup(
          partographId, permissionTypeId, searchUserGroupDtos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAsignUserGroupEvent value) getAsignUserGroup,
    required TResult Function(AsignUserGroupEvent value) asignUserGroup,
  }) {
    return asignUserGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult? Function(AsignUserGroupEvent value)? asignUserGroup,
  }) {
    return asignUserGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAsignUserGroupEvent value)? getAsignUserGroup,
    TResult Function(AsignUserGroupEvent value)? asignUserGroup,
    required TResult orElse(),
  }) {
    if (asignUserGroup != null) {
      return asignUserGroup(this);
    }
    return orElse();
  }
}

abstract class AsignUserGroupEvent implements ShareEvent {
  const factory AsignUserGroupEvent(
          {required final String partographId,
          required final int permissionTypeId,
          required final List<SearchUserGroup> searchUserGroupDtos}) =
      _$AsignUserGroupEventImpl;

  @override
  String get partographId;
  int get permissionTypeId;
  List<SearchUserGroup> get searchUserGroupDtos;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsignUserGroupEventImplCopyWith<_$AsignUserGroupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
