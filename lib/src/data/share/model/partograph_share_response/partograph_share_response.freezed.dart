// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_share_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographShareResponse _$PartographShareResponseFromJson(
    Map<String, dynamic> json) {
  return _PartographShareResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographShareResponse {
  int get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get groupTd => throw _privateConstructorUsedError;
  int get permissionTypeId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;

  /// Serializes this PartographShareResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographShareResponseCopyWith<PartographShareResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographShareResponseCopyWith<$Res> {
  factory $PartographShareResponseCopyWith(PartographShareResponse value,
          $Res Function(PartographShareResponse) then) =
      _$PartographShareResponseCopyWithImpl<$Res, PartographShareResponse>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      String userId,
      int groupTd,
      int permissionTypeId,
      DateTime createdAt,
      String owner});
}

/// @nodoc
class _$PartographShareResponseCopyWithImpl<$Res,
        $Val extends PartographShareResponse>
    implements $PartographShareResponseCopyWith<$Res> {
  _$PartographShareResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? userId = null,
    Object? groupTd = null,
    Object? permissionTypeId = null,
    Object? createdAt = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupTd: null == groupTd
          ? _value.groupTd
          : groupTd // ignore: cast_nullable_to_non_nullable
              as int,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographShareResponseImplCopyWith<$Res>
    implements $PartographShareResponseCopyWith<$Res> {
  factory _$$PartographShareResponseImplCopyWith(
          _$PartographShareResponseImpl value,
          $Res Function(_$PartographShareResponseImpl) then) =
      __$$PartographShareResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String partographId,
      String userId,
      int groupTd,
      int permissionTypeId,
      DateTime createdAt,
      String owner});
}

/// @nodoc
class __$$PartographShareResponseImplCopyWithImpl<$Res>
    extends _$PartographShareResponseCopyWithImpl<$Res,
        _$PartographShareResponseImpl>
    implements _$$PartographShareResponseImplCopyWith<$Res> {
  __$$PartographShareResponseImplCopyWithImpl(
      _$PartographShareResponseImpl _value,
      $Res Function(_$PartographShareResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? userId = null,
    Object? groupTd = null,
    Object? permissionTypeId = null,
    Object? createdAt = null,
    Object? owner = null,
  }) {
    return _then(_$PartographShareResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupTd: null == groupTd
          ? _value.groupTd
          : groupTd // ignore: cast_nullable_to_non_nullable
              as int,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographShareResponseImpl implements _PartographShareResponse {
  const _$PartographShareResponseImpl(
      {required this.id,
      required this.partographId,
      required this.userId,
      required this.groupTd,
      required this.permissionTypeId,
      required this.createdAt,
      required this.owner});

  factory _$PartographShareResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographShareResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String partographId;
  @override
  final String userId;
  @override
  final int groupTd;
  @override
  final int permissionTypeId;
  @override
  final DateTime createdAt;
  @override
  final String owner;

  @override
  String toString() {
    return 'PartographShareResponse(id: $id, partographId: $partographId, userId: $userId, groupTd: $groupTd, permissionTypeId: $permissionTypeId, createdAt: $createdAt, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographShareResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupTd, groupTd) || other.groupTd == groupTd) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, userId,
      groupTd, permissionTypeId, createdAt, owner);

  /// Create a copy of PartographShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographShareResponseImplCopyWith<_$PartographShareResponseImpl>
      get copyWith => __$$PartographShareResponseImplCopyWithImpl<
          _$PartographShareResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographShareResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographShareResponse implements PartographShareResponse {
  const factory _PartographShareResponse(
      {required final int id,
      required final String partographId,
      required final String userId,
      required final int groupTd,
      required final int permissionTypeId,
      required final DateTime createdAt,
      required final String owner}) = _$PartographShareResponseImpl;

  factory _PartographShareResponse.fromJson(Map<String, dynamic> json) =
      _$PartographShareResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get partographId;
  @override
  String get userId;
  @override
  int get groupTd;
  @override
  int get permissionTypeId;
  @override
  DateTime get createdAt;
  @override
  String get owner;

  /// Create a copy of PartographShareResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographShareResponseImplCopyWith<_$PartographShareResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
