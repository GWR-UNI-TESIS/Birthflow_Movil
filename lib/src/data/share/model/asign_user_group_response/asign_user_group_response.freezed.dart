// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asign_user_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AsignUserGroupResponse _$AsignUserGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _AsignUserGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$AsignUserGroupResponse {
  String get partographId => throw _privateConstructorUsedError;
  int get permissionTypeId => throw _privateConstructorUsedError;
  List<SearchUserGroupResponse>? get searchUserGroupDtos =>
      throw _privateConstructorUsedError;

  /// Serializes this AsignUserGroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AsignUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AsignUserGroupResponseCopyWith<AsignUserGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsignUserGroupResponseCopyWith<$Res> {
  factory $AsignUserGroupResponseCopyWith(AsignUserGroupResponse value,
          $Res Function(AsignUserGroupResponse) then) =
      _$AsignUserGroupResponseCopyWithImpl<$Res, AsignUserGroupResponse>;
  @useResult
  $Res call(
      {String partographId,
      int permissionTypeId,
      List<SearchUserGroupResponse>? searchUserGroupDtos});
}

/// @nodoc
class _$AsignUserGroupResponseCopyWithImpl<$Res,
        $Val extends AsignUserGroupResponse>
    implements $AsignUserGroupResponseCopyWith<$Res> {
  _$AsignUserGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsignUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? permissionTypeId = null,
    Object? searchUserGroupDtos = freezed,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      searchUserGroupDtos: freezed == searchUserGroupDtos
          ? _value.searchUserGroupDtos
          : searchUserGroupDtos // ignore: cast_nullable_to_non_nullable
              as List<SearchUserGroupResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AsignUserGroupResponseImplCopyWith<$Res>
    implements $AsignUserGroupResponseCopyWith<$Res> {
  factory _$$AsignUserGroupResponseImplCopyWith(
          _$AsignUserGroupResponseImpl value,
          $Res Function(_$AsignUserGroupResponseImpl) then) =
      __$$AsignUserGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partographId,
      int permissionTypeId,
      List<SearchUserGroupResponse>? searchUserGroupDtos});
}

/// @nodoc
class __$$AsignUserGroupResponseImplCopyWithImpl<$Res>
    extends _$AsignUserGroupResponseCopyWithImpl<$Res,
        _$AsignUserGroupResponseImpl>
    implements _$$AsignUserGroupResponseImplCopyWith<$Res> {
  __$$AsignUserGroupResponseImplCopyWithImpl(
      _$AsignUserGroupResponseImpl _value,
      $Res Function(_$AsignUserGroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AsignUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? permissionTypeId = null,
    Object? searchUserGroupDtos = freezed,
  }) {
    return _then(_$AsignUserGroupResponseImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      searchUserGroupDtos: freezed == searchUserGroupDtos
          ? _value._searchUserGroupDtos
          : searchUserGroupDtos // ignore: cast_nullable_to_non_nullable
              as List<SearchUserGroupResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AsignUserGroupResponseImpl implements _AsignUserGroupResponse {
  const _$AsignUserGroupResponseImpl(
      {required this.partographId,
      required this.permissionTypeId,
      final List<SearchUserGroupResponse>? searchUserGroupDtos})
      : _searchUserGroupDtos = searchUserGroupDtos;

  factory _$AsignUserGroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AsignUserGroupResponseImplFromJson(json);

  @override
  final String partographId;
  @override
  final int permissionTypeId;
  final List<SearchUserGroupResponse>? _searchUserGroupDtos;
  @override
  List<SearchUserGroupResponse>? get searchUserGroupDtos {
    final value = _searchUserGroupDtos;
    if (value == null) return null;
    if (_searchUserGroupDtos is EqualUnmodifiableListView)
      return _searchUserGroupDtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AsignUserGroupResponse(partographId: $partographId, permissionTypeId: $permissionTypeId, searchUserGroupDtos: $searchUserGroupDtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsignUserGroupResponseImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId) &&
            const DeepCollectionEquality()
                .equals(other._searchUserGroupDtos, _searchUserGroupDtos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partographId, permissionTypeId,
      const DeepCollectionEquality().hash(_searchUserGroupDtos));

  /// Create a copy of AsignUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsignUserGroupResponseImplCopyWith<_$AsignUserGroupResponseImpl>
      get copyWith => __$$AsignUserGroupResponseImplCopyWithImpl<
          _$AsignUserGroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AsignUserGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _AsignUserGroupResponse implements AsignUserGroupResponse {
  const factory _AsignUserGroupResponse(
          {required final String partographId,
          required final int permissionTypeId,
          final List<SearchUserGroupResponse>? searchUserGroupDtos}) =
      _$AsignUserGroupResponseImpl;

  factory _AsignUserGroupResponse.fromJson(Map<String, dynamic> json) =
      _$AsignUserGroupResponseImpl.fromJson;

  @override
  String get partographId;
  @override
  int get permissionTypeId;
  @override
  List<SearchUserGroupResponse>? get searchUserGroupDtos;

  /// Create a copy of AsignUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsignUserGroupResponseImplCopyWith<_$AsignUserGroupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
