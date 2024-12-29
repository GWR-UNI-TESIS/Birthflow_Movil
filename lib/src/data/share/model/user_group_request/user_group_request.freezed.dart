// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_group_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGroupRequest _$UserGroupRequestFromJson(Map<String, dynamic> json) {
  return _UserGroupRequest.fromJson(json);
}

/// @nodoc
mixin _$UserGroupRequest {
  String get userId => throw _privateConstructorUsedError;
  int get groupId => throw _privateConstructorUsedError;

  /// Serializes this UserGroupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGroupRequestCopyWith<UserGroupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupRequestCopyWith<$Res> {
  factory $UserGroupRequestCopyWith(
          UserGroupRequest value, $Res Function(UserGroupRequest) then) =
      _$UserGroupRequestCopyWithImpl<$Res, UserGroupRequest>;
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class _$UserGroupRequestCopyWithImpl<$Res, $Val extends UserGroupRequest>
    implements $UserGroupRequestCopyWith<$Res> {
  _$UserGroupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserGroupRequestImplCopyWith<$Res>
    implements $UserGroupRequestCopyWith<$Res> {
  factory _$$UserGroupRequestImplCopyWith(_$UserGroupRequestImpl value,
          $Res Function(_$UserGroupRequestImpl) then) =
      __$$UserGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class __$$UserGroupRequestImplCopyWithImpl<$Res>
    extends _$UserGroupRequestCopyWithImpl<$Res, _$UserGroupRequestImpl>
    implements _$$UserGroupRequestImplCopyWith<$Res> {
  __$$UserGroupRequestImplCopyWithImpl(_$UserGroupRequestImpl _value,
      $Res Function(_$UserGroupRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? groupId = null,
  }) {
    return _then(_$UserGroupRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGroupRequestImpl implements _UserGroupRequest {
  const _$UserGroupRequestImpl({required this.userId, required this.groupId});

  factory _$UserGroupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGroupRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final int groupId;

  @override
  String toString() {
    return 'UserGroupRequest(userId: $userId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGroupRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, groupId);

  /// Create a copy of UserGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGroupRequestImplCopyWith<_$UserGroupRequestImpl> get copyWith =>
      __$$UserGroupRequestImplCopyWithImpl<_$UserGroupRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGroupRequestImplToJson(
      this,
    );
  }
}

abstract class _UserGroupRequest implements UserGroupRequest {
  const factory _UserGroupRequest(
      {required final String userId,
      required final int groupId}) = _$UserGroupRequestImpl;

  factory _UserGroupRequest.fromJson(Map<String, dynamic> json) =
      _$UserGroupRequestImpl.fromJson;

  @override
  String get userId;
  @override
  int get groupId;

  /// Create a copy of UserGroupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGroupRequestImplCopyWith<_$UserGroupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
