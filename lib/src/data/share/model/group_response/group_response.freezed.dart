// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) {
  return _GroupResponse.fromJson(json);
}

/// @nodoc
mixin _$GroupResponse {
  int get id => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this GroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupResponseCopyWith<GroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupResponseCopyWith<$Res> {
  factory $GroupResponseCopyWith(
          GroupResponse value, $Res Function(GroupResponse) then) =
      _$GroupResponseCopyWithImpl<$Res, GroupResponse>;
  @useResult
  $Res call(
      {int id,
      String groupName,
      bool isPublic,
      bool isDeleted,
      String createdBy,
      DateTime createdAt,
      DateTime deletedAt});
}

/// @nodoc
class _$GroupResponseCopyWithImpl<$Res, $Val extends GroupResponse>
    implements $GroupResponseCopyWith<$Res> {
  _$GroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? isPublic = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? deletedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupResponseImplCopyWith<$Res>
    implements $GroupResponseCopyWith<$Res> {
  factory _$$GroupResponseImplCopyWith(
          _$GroupResponseImpl value, $Res Function(_$GroupResponseImpl) then) =
      __$$GroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String groupName,
      bool isPublic,
      bool isDeleted,
      String createdBy,
      DateTime createdAt,
      DateTime deletedAt});
}

/// @nodoc
class __$$GroupResponseImplCopyWithImpl<$Res>
    extends _$GroupResponseCopyWithImpl<$Res, _$GroupResponseImpl>
    implements _$$GroupResponseImplCopyWith<$Res> {
  __$$GroupResponseImplCopyWithImpl(
      _$GroupResponseImpl _value, $Res Function(_$GroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? isPublic = null,
    Object? isDeleted = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? deletedAt = null,
  }) {
    return _then(_$GroupResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupResponseImpl implements _GroupResponse {
  const _$GroupResponseImpl(
      {required this.id,
      required this.groupName,
      required this.isPublic,
      required this.isDeleted,
      required this.createdBy,
      required this.createdAt,
      required this.deletedAt});

  factory _$GroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String groupName;
  @override
  final bool isPublic;
  @override
  final bool isDeleted;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime deletedAt;

  @override
  String toString() {
    return 'GroupResponse(id: $id, groupName: $groupName, isPublic: $isPublic, isDeleted: $isDeleted, createdBy: $createdBy, createdAt: $createdAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, groupName, isPublic,
      isDeleted, createdBy, createdAt, deletedAt);

  /// Create a copy of GroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupResponseImplCopyWith<_$GroupResponseImpl> get copyWith =>
      __$$GroupResponseImplCopyWithImpl<_$GroupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupResponseImplToJson(
      this,
    );
  }
}

abstract class _GroupResponse implements GroupResponse {
  const factory _GroupResponse(
      {required final int id,
      required final String groupName,
      required final bool isPublic,
      required final bool isDeleted,
      required final String createdBy,
      required final DateTime createdAt,
      required final DateTime deletedAt}) = _$GroupResponseImpl;

  factory _GroupResponse.fromJson(Map<String, dynamic> json) =
      _$GroupResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get groupName;
  @override
  bool get isPublic;
  @override
  bool get isDeleted;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get deletedAt;

  /// Create a copy of GroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupResponseImplCopyWith<_$GroupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
