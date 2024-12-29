// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGroupResponse _$UserGroupResponseFromJson(Map<String, dynamic> json) {
  return _UserGroupResponse.fromJson(json);
}

/// @nodoc
mixin _$UserGroupResponse {
  String get userId => throw _privateConstructorUsedError;
  int get groupId => throw _privateConstructorUsedError;

  /// Serializes this UserGroupResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGroupResponseCopyWith<UserGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupResponseCopyWith<$Res> {
  factory $UserGroupResponseCopyWith(
          UserGroupResponse value, $Res Function(UserGroupResponse) then) =
      _$UserGroupResponseCopyWithImpl<$Res, UserGroupResponse>;
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class _$UserGroupResponseCopyWithImpl<$Res, $Val extends UserGroupResponse>
    implements $UserGroupResponseCopyWith<$Res> {
  _$UserGroupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGroupResponse
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
abstract class _$$UserGroupResponseImplCopyWith<$Res>
    implements $UserGroupResponseCopyWith<$Res> {
  factory _$$UserGroupResponseImplCopyWith(_$UserGroupResponseImpl value,
          $Res Function(_$UserGroupResponseImpl) then) =
      __$$UserGroupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class __$$UserGroupResponseImplCopyWithImpl<$Res>
    extends _$UserGroupResponseCopyWithImpl<$Res, _$UserGroupResponseImpl>
    implements _$$UserGroupResponseImplCopyWith<$Res> {
  __$$UserGroupResponseImplCopyWithImpl(_$UserGroupResponseImpl _value,
      $Res Function(_$UserGroupResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? groupId = null,
  }) {
    return _then(_$UserGroupResponseImpl(
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
class _$UserGroupResponseImpl implements _UserGroupResponse {
  const _$UserGroupResponseImpl({required this.userId, required this.groupId});

  factory _$UserGroupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGroupResponseImplFromJson(json);

  @override
  final String userId;
  @override
  final int groupId;

  @override
  String toString() {
    return 'UserGroupResponse(userId: $userId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGroupResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, groupId);

  /// Create a copy of UserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGroupResponseImplCopyWith<_$UserGroupResponseImpl> get copyWith =>
      __$$UserGroupResponseImplCopyWithImpl<_$UserGroupResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGroupResponseImplToJson(
      this,
    );
  }
}

abstract class _UserGroupResponse implements UserGroupResponse {
  const factory _UserGroupResponse(
      {required final String userId,
      required final int groupId}) = _$UserGroupResponseImpl;

  factory _UserGroupResponse.fromJson(Map<String, dynamic> json) =
      _$UserGroupResponseImpl.fromJson;

  @override
  String get userId;
  @override
  int get groupId;

  /// Create a copy of UserGroupResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserGroupResponseImplCopyWith<_$UserGroupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
