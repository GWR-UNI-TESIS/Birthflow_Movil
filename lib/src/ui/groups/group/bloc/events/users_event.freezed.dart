// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UsersEvent {
  int get groupId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int groupId) loadUsers,
    required TResult Function(String userId, int groupId) addUser,
    required TResult Function(String userId, int groupId) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int groupId)? loadUsers,
    TResult? Function(String userId, int groupId)? addUser,
    TResult? Function(String userId, int groupId)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int groupId)? loadUsers,
    TResult Function(String userId, int groupId)? addUser,
    TResult Function(String userId, int groupId)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(AddUser value) addUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(AddUser value)? addUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersEventCopyWith<UsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res, UsersEvent>;
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res, $Val extends UsersEvent>
    implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadUsersImplCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory _$$LoadUsersImplCopyWith(
          _$LoadUsersImpl value, $Res Function(_$LoadUsersImpl) then) =
      __$$LoadUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int groupId});
}

/// @nodoc
class __$$LoadUsersImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$LoadUsersImpl>
    implements _$$LoadUsersImplCopyWith<$Res> {
  __$$LoadUsersImplCopyWithImpl(
      _$LoadUsersImpl _value, $Res Function(_$LoadUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
  }) {
    return _then(_$LoadUsersImpl(
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadUsersImpl implements LoadUsers {
  const _$LoadUsersImpl(this.groupId);

  @override
  final int groupId;

  @override
  String toString() {
    return 'UsersEvent.loadUsers(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUsersImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUsersImplCopyWith<_$LoadUsersImpl> get copyWith =>
      __$$LoadUsersImplCopyWithImpl<_$LoadUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int groupId) loadUsers,
    required TResult Function(String userId, int groupId) addUser,
    required TResult Function(String userId, int groupId) deleteUser,
  }) {
    return loadUsers(groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int groupId)? loadUsers,
    TResult? Function(String userId, int groupId)? addUser,
    TResult? Function(String userId, int groupId)? deleteUser,
  }) {
    return loadUsers?.call(groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int groupId)? loadUsers,
    TResult Function(String userId, int groupId)? addUser,
    TResult Function(String userId, int groupId)? deleteUser,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(AddUser value) addUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return loadUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(DeleteUser value)? deleteUser,
  }) {
    return loadUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(AddUser value)? addUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (loadUsers != null) {
      return loadUsers(this);
    }
    return orElse();
  }
}

abstract class LoadUsers implements UsersEvent {
  const factory LoadUsers(final int groupId) = _$LoadUsersImpl;

  @override
  int get groupId;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadUsersImplCopyWith<_$LoadUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? groupId = null,
  }) {
    return _then(_$AddUserImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddUserImpl implements AddUser {
  const _$AddUserImpl(this.userId, this.groupId);

  @override
  final String userId;
  @override
  final int groupId;

  @override
  String toString() {
    return 'UsersEvent.addUser(userId: $userId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, groupId);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int groupId) loadUsers,
    required TResult Function(String userId, int groupId) addUser,
    required TResult Function(String userId, int groupId) deleteUser,
  }) {
    return addUser(userId, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int groupId)? loadUsers,
    TResult? Function(String userId, int groupId)? addUser,
    TResult? Function(String userId, int groupId)? deleteUser,
  }) {
    return addUser?.call(userId, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int groupId)? loadUsers,
    TResult Function(String userId, int groupId)? addUser,
    TResult Function(String userId, int groupId)? deleteUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(userId, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(AddUser value) addUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(DeleteUser value)? deleteUser,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(AddUser value)? addUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class AddUser implements UsersEvent {
  const factory AddUser(final String userId, final int groupId) = _$AddUserImpl;

  String get userId;
  @override
  int get groupId;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserImplCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory _$$DeleteUserImplCopyWith(
          _$DeleteUserImpl value, $Res Function(_$DeleteUserImpl) then) =
      __$$DeleteUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int groupId});
}

/// @nodoc
class __$$DeleteUserImplCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res, _$DeleteUserImpl>
    implements _$$DeleteUserImplCopyWith<$Res> {
  __$$DeleteUserImplCopyWithImpl(
      _$DeleteUserImpl _value, $Res Function(_$DeleteUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? groupId = null,
  }) {
    return _then(_$DeleteUserImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUserImpl implements DeleteUser {
  const _$DeleteUserImpl(this.userId, this.groupId);

  @override
  final String userId;
  @override
  final int groupId;

  @override
  String toString() {
    return 'UsersEvent.deleteUser(userId: $userId, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, groupId);

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      __$$DeleteUserImplCopyWithImpl<_$DeleteUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int groupId) loadUsers,
    required TResult Function(String userId, int groupId) addUser,
    required TResult Function(String userId, int groupId) deleteUser,
  }) {
    return deleteUser(userId, groupId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int groupId)? loadUsers,
    TResult? Function(String userId, int groupId)? addUser,
    TResult? Function(String userId, int groupId)? deleteUser,
  }) {
    return deleteUser?.call(userId, groupId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int groupId)? loadUsers,
    TResult Function(String userId, int groupId)? addUser,
    TResult Function(String userId, int groupId)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(userId, groupId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUsers value) loadUsers,
    required TResult Function(AddUser value) addUser,
    required TResult Function(DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUsers value)? loadUsers,
    TResult? Function(AddUser value)? addUser,
    TResult? Function(DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUsers value)? loadUsers,
    TResult Function(AddUser value)? addUser,
    TResult Function(DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UsersEvent {
  const factory DeleteUser(final String userId, final int groupId) =
      _$DeleteUserImpl;

  String get userId;
  @override
  int get groupId;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserImplCopyWith<_$DeleteUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
