// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_group_share_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographGroupShareResponse _$PartographGroupShareResponseFromJson(
    Map<String, dynamic> json) {
  return _PartographGroupShareResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographGroupShareResponse {
  int get id => throw _privateConstructorUsedError;
  int get partographGroupId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;
  int? get permissionTypeId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PartographGroupShareResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographGroupShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographGroupShareResponseCopyWith<PartographGroupShareResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographGroupShareResponseCopyWith<$Res> {
  factory $PartographGroupShareResponseCopyWith(
          PartographGroupShareResponse value,
          $Res Function(PartographGroupShareResponse) then) =
      _$PartographGroupShareResponseCopyWithImpl<$Res,
          PartographGroupShareResponse>;
  @useResult
  $Res call(
      {int id,
      int partographGroupId,
      String? userId,
      int? groupId,
      int? permissionTypeId,
      DateTime createdAt});
}

/// @nodoc
class _$PartographGroupShareResponseCopyWithImpl<$Res,
        $Val extends PartographGroupShareResponse>
    implements $PartographGroupShareResponseCopyWith<$Res> {
  _$PartographGroupShareResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographGroupShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographGroupId = null,
    Object? userId = freezed,
    Object? groupId = freezed,
    Object? permissionTypeId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionTypeId: freezed == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographGroupShareResponseImplCopyWith<$Res>
    implements $PartographGroupShareResponseCopyWith<$Res> {
  factory _$$PartographGroupShareResponseImplCopyWith(
          _$PartographGroupShareResponseImpl value,
          $Res Function(_$PartographGroupShareResponseImpl) then) =
      __$$PartographGroupShareResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int partographGroupId,
      String? userId,
      int? groupId,
      int? permissionTypeId,
      DateTime createdAt});
}

/// @nodoc
class __$$PartographGroupShareResponseImplCopyWithImpl<$Res>
    extends _$PartographGroupShareResponseCopyWithImpl<$Res,
        _$PartographGroupShareResponseImpl>
    implements _$$PartographGroupShareResponseImplCopyWith<$Res> {
  __$$PartographGroupShareResponseImplCopyWithImpl(
      _$PartographGroupShareResponseImpl _value,
      $Res Function(_$PartographGroupShareResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographGroupShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographGroupId = null,
    Object? userId = freezed,
    Object? groupId = freezed,
    Object? permissionTypeId = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PartographGroupShareResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      permissionTypeId: freezed == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographGroupShareResponseImpl
    implements _PartographGroupShareResponse {
  const _$PartographGroupShareResponseImpl(
      {required this.id,
      required this.partographGroupId,
      this.userId,
      this.groupId,
      this.permissionTypeId,
      required this.createdAt});

  factory _$PartographGroupShareResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PartographGroupShareResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int partographGroupId;
  @override
  final String? userId;
  @override
  final int? groupId;
  @override
  final int? permissionTypeId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PartographGroupShareResponse(id: $id, partographGroupId: $partographGroupId, userId: $userId, groupId: $groupId, permissionTypeId: $permissionTypeId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographGroupShareResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographGroupId, partographGroupId) ||
                other.partographGroupId == partographGroupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, partographGroupId, userId,
      groupId, permissionTypeId, createdAt);

  /// Create a copy of PartographGroupShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographGroupShareResponseImplCopyWith<
          _$PartographGroupShareResponseImpl>
      get copyWith => __$$PartographGroupShareResponseImplCopyWithImpl<
          _$PartographGroupShareResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographGroupShareResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographGroupShareResponse
    implements PartographGroupShareResponse {
  const factory _PartographGroupShareResponse(
      {required final int id,
      required final int partographGroupId,
      final String? userId,
      final int? groupId,
      final int? permissionTypeId,
      required final DateTime createdAt}) = _$PartographGroupShareResponseImpl;

  factory _PartographGroupShareResponse.fromJson(Map<String, dynamic> json) =
      _$PartographGroupShareResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get partographGroupId;
  @override
  String? get userId;
  @override
  int? get groupId;
  @override
  int? get permissionTypeId;
  @override
  DateTime get createdAt;

  /// Create a copy of PartographGroupShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographGroupShareResponseImplCopyWith<
          _$PartographGroupShareResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
