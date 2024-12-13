// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_share_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographShareRequest _$PartographShareRequestFromJson(
    Map<String, dynamic> json) {
  return _PartographShareRequest.fromJson(json);
}

/// @nodoc
mixin _$PartographShareRequest {
  int? get id => throw _privateConstructorUsedError;
  int get partographGroupId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get groupTd => throw _privateConstructorUsedError;
  int get permissionTypeId => throw _privateConstructorUsedError;

  /// Serializes this PartographShareRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographShareRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographShareRequestCopyWith<PartographShareRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographShareRequestCopyWith<$Res> {
  factory $PartographShareRequestCopyWith(PartographShareRequest value,
          $Res Function(PartographShareRequest) then) =
      _$PartographShareRequestCopyWithImpl<$Res, PartographShareRequest>;
  @useResult
  $Res call(
      {int? id,
      int partographGroupId,
      String userId,
      int groupTd,
      int permissionTypeId});
}

/// @nodoc
class _$PartographShareRequestCopyWithImpl<$Res,
        $Val extends PartographShareRequest>
    implements $PartographShareRequestCopyWith<$Res> {
  _$PartographShareRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographShareRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographGroupId = null,
    Object? userId = null,
    Object? groupTd = null,
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
      groupTd: null == groupTd
          ? _value.groupTd
          : groupTd // ignore: cast_nullable_to_non_nullable
              as int,
      permissionTypeId: null == permissionTypeId
          ? _value.permissionTypeId
          : permissionTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographShareRequestImplCopyWith<$Res>
    implements $PartographShareRequestCopyWith<$Res> {
  factory _$$PartographShareRequestImplCopyWith(
          _$PartographShareRequestImpl value,
          $Res Function(_$PartographShareRequestImpl) then) =
      __$$PartographShareRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int partographGroupId,
      String userId,
      int groupTd,
      int permissionTypeId});
}

/// @nodoc
class __$$PartographShareRequestImplCopyWithImpl<$Res>
    extends _$PartographShareRequestCopyWithImpl<$Res,
        _$PartographShareRequestImpl>
    implements _$$PartographShareRequestImplCopyWith<$Res> {
  __$$PartographShareRequestImplCopyWithImpl(
      _$PartographShareRequestImpl _value,
      $Res Function(_$PartographShareRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographShareRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographGroupId = null,
    Object? userId = null,
    Object? groupTd = null,
    Object? permissionTypeId = null,
  }) {
    return _then(_$PartographShareRequestImpl(
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
      groupTd: null == groupTd
          ? _value.groupTd
          : groupTd // ignore: cast_nullable_to_non_nullable
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
class _$PartographShareRequestImpl implements _PartographShareRequest {
  const _$PartographShareRequestImpl(
      {this.id,
      required this.partographGroupId,
      required this.userId,
      required this.groupTd,
      required this.permissionTypeId});

  factory _$PartographShareRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographShareRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final int partographGroupId;
  @override
  final String userId;
  @override
  final int groupTd;
  @override
  final int permissionTypeId;

  @override
  String toString() {
    return 'PartographShareRequest(id: $id, partographGroupId: $partographGroupId, userId: $userId, groupTd: $groupTd, permissionTypeId: $permissionTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographShareRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographGroupId, partographGroupId) ||
                other.partographGroupId == partographGroupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupTd, groupTd) || other.groupTd == groupTd) &&
            (identical(other.permissionTypeId, permissionTypeId) ||
                other.permissionTypeId == permissionTypeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, partographGroupId, userId, groupTd, permissionTypeId);

  /// Create a copy of PartographShareRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographShareRequestImplCopyWith<_$PartographShareRequestImpl>
      get copyWith => __$$PartographShareRequestImplCopyWithImpl<
          _$PartographShareRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographShareRequestImplToJson(
      this,
    );
  }
}

abstract class _PartographShareRequest implements PartographShareRequest {
  const factory _PartographShareRequest(
      {final int? id,
      required final int partographGroupId,
      required final String userId,
      required final int groupTd,
      required final int permissionTypeId}) = _$PartographShareRequestImpl;

  factory _PartographShareRequest.fromJson(Map<String, dynamic> json) =
      _$PartographShareRequestImpl.fromJson;

  @override
  int? get id;
  @override
  int get partographGroupId;
  @override
  String get userId;
  @override
  int get groupTd;
  @override
  int get permissionTypeId;

  /// Create a copy of PartographShareRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographShareRequestImplCopyWith<_$PartographShareRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
