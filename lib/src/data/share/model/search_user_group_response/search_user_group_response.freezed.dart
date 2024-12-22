// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchUserGroupResponse _$SearchUserGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchUserGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchUserGroupResponse {
  int? get id => throw _privateConstructorUsedError;
  int get partographGroupId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get groupId => throw _privateConstructorUsedError;
  int get permissionTypeId => throw _privateConstructorUsedError;

  /// Serializes this SearchUserGroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUserGroupResponseCopyWith<SearchUserGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserGroupResponseCopyWith<$Res> {
  factory $SearchUserGroupResponseCopyWith(SearchUserGroupResponse value,
          $Res Function(SearchUserGroupResponse) then) =
      _$SearchUserGroupResponseCopyWithImpl<$Res, SearchUserGroupResponse>;
  @useResult
  $Res call(
      {int? id,
      int partographGroupId,
      String userId,
      int groupId,
      int permissionTypeId});
}

/// @nodoc
class _$SearchUserGroupResponseCopyWithImpl<$Res,
        $Val extends SearchUserGroupResponse>
    implements $SearchUserGroupResponseCopyWith<$Res> {
  _$SearchUserGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographGroupId = null,
    Object? userId = null,
    Object? groupId = null,
    Object? permissionTypeId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUserGroupResponseImplCopyWith<$Res>
    implements $SearchUserGroupResponseCopyWith<$Res> {
  factory _$$SearchUserGroupResponseImplCopyWith(
          _$SearchUserGroupResponseImpl value,
          $Res Function(_$SearchUserGroupResponseImpl) then) =
      __$$SearchUserGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int partographGroupId,
      String userId,
      int groupId,
      int permissionTypeId});
}

/// @nodoc
class __$$SearchUserGroupResponseImplCopyWithImpl<$Res>
    extends _$SearchUserGroupResponseCopyWithImpl<$Res,
        _$SearchUserGroupResponseImpl>
    implements _$$SearchUserGroupResponseImplCopyWith<$Res> {
  __$$SearchUserGroupResponseImplCopyWithImpl(
      _$SearchUserGroupResponseImpl _value,
      $Res Function(_$SearchUserGroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographGroupId = null,
    Object? userId = null,
    Object? groupId = null,
    Object? permissionTypeId = null,
  }) {
    return _then(_$SearchUserGroupResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchUserGroupResponseImpl implements _SearchUserGroupResponse {
  const _$SearchUserGroupResponseImpl(
      {this.id,
      required this.partographGroupId,
      required this.userId,
      required this.groupId,
      required this.permissionTypeId});

  factory _$SearchUserGroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchUserGroupResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final int partographGroupId;
  @override
  final String userId;
  @override
  final int groupId;
  @override
  final int permissionTypeId;

  @override
  String toString() {
    return 'SearchUserGroupResponse(id: $id, partographGroupId: $partographGroupId, userId: $userId, groupId: $groupId, permissionTypeId: $permissionTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserGroupResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographGroupId, partographGroupId) ||
                other.partographGroupId == partographGroupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, partographGroupId, userId, groupId, permissionTypeId);

  /// Create a copy of SearchUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserGroupResponseImplCopyWith<_$SearchUserGroupResponseImpl>
      get copyWith => __$$SearchUserGroupResponseImplCopyWithImpl<
          _$SearchUserGroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchUserGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchUserGroupResponse implements SearchUserGroupResponse {
  const factory _SearchUserGroupResponse(
      {final int? id,
      required final int partographGroupId,
      required final String userId,
      required final int groupId,
      required final int permissionTypeId}) = _$SearchUserGroupResponseImpl;

  factory _SearchUserGroupResponse.fromJson(Map<String, dynamic> json) =
      _$SearchUserGroupResponseImpl.fromJson;

  @override
  int? get id;
  @override
  int get partographGroupId;
  @override
  String get userId;
  @override
  int get groupId;
  @override
  int get permissionTypeId;

  /// Create a copy of SearchUserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUserGroupResponseImplCopyWith<_$SearchUserGroupResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
