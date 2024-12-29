// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroups,
    required TResult Function(String name) createGroup,
    required TResult Function(int id, String name) updateGroup,
    required TResult Function(int id) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroups,
    TResult? Function(String name)? createGroup,
    TResult? Function(int id, String name)? updateGroup,
    TResult? Function(int id)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroups,
    TResult Function(String name)? createGroup,
    TResult Function(int id, String name)? updateGroup,
    TResult Function(int id)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroups value) loadGroups,
    required TResult Function(CreateGroup value) createGroup,
    required TResult Function(UpdateGroup value) updateGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroups value)? loadGroups,
    TResult? Function(CreateGroup value)? createGroup,
    TResult? Function(UpdateGroup value)? updateGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroups value)? loadGroups,
    TResult Function(CreateGroup value)? createGroup,
    TResult Function(UpdateGroup value)? updateGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res, GroupsEvent>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res, $Val extends GroupsEvent>
    implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadGroupsImplCopyWith<$Res> {
  factory _$$LoadGroupsImplCopyWith(
          _$LoadGroupsImpl value, $Res Function(_$LoadGroupsImpl) then) =
      __$$LoadGroupsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadGroupsImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$LoadGroupsImpl>
    implements _$$LoadGroupsImplCopyWith<$Res> {
  __$$LoadGroupsImplCopyWithImpl(
      _$LoadGroupsImpl _value, $Res Function(_$LoadGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadGroupsImpl implements LoadGroups {
  const _$LoadGroupsImpl();

  @override
  String toString() {
    return 'GroupsEvent.loadGroups()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadGroupsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroups,
    required TResult Function(String name) createGroup,
    required TResult Function(int id, String name) updateGroup,
    required TResult Function(int id) deleteGroup,
  }) {
    return loadGroups();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroups,
    TResult? Function(String name)? createGroup,
    TResult? Function(int id, String name)? updateGroup,
    TResult? Function(int id)? deleteGroup,
  }) {
    return loadGroups?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroups,
    TResult Function(String name)? createGroup,
    TResult Function(int id, String name)? updateGroup,
    TResult Function(int id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroups value) loadGroups,
    required TResult Function(CreateGroup value) createGroup,
    required TResult Function(UpdateGroup value) updateGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return loadGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroups value)? loadGroups,
    TResult? Function(CreateGroup value)? createGroup,
    TResult? Function(UpdateGroup value)? updateGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return loadGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroups value)? loadGroups,
    TResult Function(CreateGroup value)? createGroup,
    TResult Function(UpdateGroup value)? updateGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (loadGroups != null) {
      return loadGroups(this);
    }
    return orElse();
  }
}

abstract class LoadGroups implements GroupsEvent {
  const factory LoadGroups() = _$LoadGroupsImpl;
}

/// @nodoc
abstract class _$$CreateGroupImplCopyWith<$Res> {
  factory _$$CreateGroupImplCopyWith(
          _$CreateGroupImpl value, $Res Function(_$CreateGroupImpl) then) =
      __$$CreateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$CreateGroupImpl>
    implements _$$CreateGroupImplCopyWith<$Res> {
  __$$CreateGroupImplCopyWithImpl(
      _$CreateGroupImpl _value, $Res Function(_$CreateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateGroupImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGroupImpl implements CreateGroup {
  const _$CreateGroupImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'GroupsEvent.createGroup(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      __$$CreateGroupImplCopyWithImpl<_$CreateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroups,
    required TResult Function(String name) createGroup,
    required TResult Function(int id, String name) updateGroup,
    required TResult Function(int id) deleteGroup,
  }) {
    return createGroup(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroups,
    TResult? Function(String name)? createGroup,
    TResult? Function(int id, String name)? updateGroup,
    TResult? Function(int id)? deleteGroup,
  }) {
    return createGroup?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroups,
    TResult Function(String name)? createGroup,
    TResult Function(int id, String name)? updateGroup,
    TResult Function(int id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroups value) loadGroups,
    required TResult Function(CreateGroup value) createGroup,
    required TResult Function(UpdateGroup value) updateGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroups value)? loadGroups,
    TResult? Function(CreateGroup value)? createGroup,
    TResult? Function(UpdateGroup value)? updateGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroups value)? loadGroups,
    TResult Function(CreateGroup value)? createGroup,
    TResult Function(UpdateGroup value)? updateGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class CreateGroup implements GroupsEvent {
  const factory CreateGroup(final String name) = _$CreateGroupImpl;

  String get name;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateGroupImplCopyWith<_$CreateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGroupImplCopyWith<$Res> {
  factory _$$UpdateGroupImplCopyWith(
          _$UpdateGroupImpl value, $Res Function(_$UpdateGroupImpl) then) =
      __$$UpdateGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$UpdateGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$UpdateGroupImpl>
    implements _$$UpdateGroupImplCopyWith<$Res> {
  __$$UpdateGroupImplCopyWithImpl(
      _$UpdateGroupImpl _value, $Res Function(_$UpdateGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UpdateGroupImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateGroupImpl implements UpdateGroup {
  const _$UpdateGroupImpl(this.id, this.name);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GroupsEvent.updateGroup(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      __$$UpdateGroupImplCopyWithImpl<_$UpdateGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroups,
    required TResult Function(String name) createGroup,
    required TResult Function(int id, String name) updateGroup,
    required TResult Function(int id) deleteGroup,
  }) {
    return updateGroup(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroups,
    TResult? Function(String name)? createGroup,
    TResult? Function(int id, String name)? updateGroup,
    TResult? Function(int id)? deleteGroup,
  }) {
    return updateGroup?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroups,
    TResult Function(String name)? createGroup,
    TResult Function(int id, String name)? updateGroup,
    TResult Function(int id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroups value) loadGroups,
    required TResult Function(CreateGroup value) createGroup,
    required TResult Function(UpdateGroup value) updateGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return updateGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroups value)? loadGroups,
    TResult? Function(CreateGroup value)? createGroup,
    TResult? Function(UpdateGroup value)? updateGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return updateGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroups value)? loadGroups,
    TResult Function(CreateGroup value)? createGroup,
    TResult Function(UpdateGroup value)? updateGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (updateGroup != null) {
      return updateGroup(this);
    }
    return orElse();
  }
}

abstract class UpdateGroup implements GroupsEvent {
  const factory UpdateGroup(final int id, final String name) =
      _$UpdateGroupImpl;

  int get id;
  String get name;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateGroupImplCopyWith<_$UpdateGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteGroupImplCopyWith<$Res> {
  factory _$$DeleteGroupImplCopyWith(
          _$DeleteGroupImpl value, $Res Function(_$DeleteGroupImpl) then) =
      __$$DeleteGroupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteGroupImplCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res, _$DeleteGroupImpl>
    implements _$$DeleteGroupImplCopyWith<$Res> {
  __$$DeleteGroupImplCopyWithImpl(
      _$DeleteGroupImpl _value, $Res Function(_$DeleteGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteGroupImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteGroupImpl implements DeleteGroup {
  const _$DeleteGroupImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GroupsEvent.deleteGroup(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGroupImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      __$$DeleteGroupImplCopyWithImpl<_$DeleteGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadGroups,
    required TResult Function(String name) createGroup,
    required TResult Function(int id, String name) updateGroup,
    required TResult Function(int id) deleteGroup,
  }) {
    return deleteGroup(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadGroups,
    TResult? Function(String name)? createGroup,
    TResult? Function(int id, String name)? updateGroup,
    TResult? Function(int id)? deleteGroup,
  }) {
    return deleteGroup?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadGroups,
    TResult Function(String name)? createGroup,
    TResult Function(int id, String name)? updateGroup,
    TResult Function(int id)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadGroups value) loadGroups,
    required TResult Function(CreateGroup value) createGroup,
    required TResult Function(UpdateGroup value) updateGroup,
    required TResult Function(DeleteGroup value) deleteGroup,
  }) {
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadGroups value)? loadGroups,
    TResult? Function(CreateGroup value)? createGroup,
    TResult? Function(UpdateGroup value)? updateGroup,
    TResult? Function(DeleteGroup value)? deleteGroup,
  }) {
    return deleteGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadGroups value)? loadGroups,
    TResult Function(CreateGroup value)? createGroup,
    TResult Function(UpdateGroup value)? updateGroup,
    TResult Function(DeleteGroup value)? deleteGroup,
    required TResult orElse(),
  }) {
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class DeleteGroup implements GroupsEvent {
  const factory DeleteGroup(final int id) = _$DeleteGroupImpl;

  int get id;

  /// Create a copy of GroupsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteGroupImplCopyWith<_$DeleteGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
