// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShareState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
          ShareState value, $Res Function(ShareState) then) =
      _$ShareStateCopyWithImpl<$Res, ShareState>;
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res, $Val extends ShareState>
    implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShareLoadingImplCopyWith<$Res> {
  factory _$$ShareLoadingImplCopyWith(
          _$ShareLoadingImpl value, $Res Function(_$ShareLoadingImpl) then) =
      __$$ShareLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareLoadingImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareLoadingImpl>
    implements _$$ShareLoadingImplCopyWith<$Res> {
  __$$ShareLoadingImplCopyWithImpl(
      _$ShareLoadingImpl _value, $Res Function(_$ShareLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareLoadingImpl implements ShareLoading {
  const _$ShareLoadingImpl();

  @override
  String toString() {
    return 'ShareState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShareLoading implements ShareState {
  const factory ShareLoading() = _$ShareLoadingImpl;
}

/// @nodoc
abstract class _$$ShareEmptyImplCopyWith<$Res> {
  factory _$$ShareEmptyImplCopyWith(
          _$ShareEmptyImpl value, $Res Function(_$ShareEmptyImpl) then) =
      __$$ShareEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShareEmptyImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareEmptyImpl>
    implements _$$ShareEmptyImplCopyWith<$Res> {
  __$$ShareEmptyImplCopyWithImpl(
      _$ShareEmptyImpl _value, $Res Function(_$ShareEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShareEmptyImpl implements ShareEmpty {
  const _$ShareEmptyImpl();

  @override
  String toString() {
    return 'ShareState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShareEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ShareEmpty implements ShareState {
  const factory ShareEmpty() = _$ShareEmptyImpl;
}

/// @nodoc
abstract class _$$ShareLoadedImplCopyWith<$Res> {
  factory _$$ShareLoadedImplCopyWith(
          _$ShareLoadedImpl value, $Res Function(_$ShareLoadedImpl) then) =
      __$$ShareLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchUserGroup> groups});
}

/// @nodoc
class __$$ShareLoadedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareLoadedImpl>
    implements _$$ShareLoadedImplCopyWith<$Res> {
  __$$ShareLoadedImplCopyWithImpl(
      _$ShareLoadedImpl _value, $Res Function(_$ShareLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$ShareLoadedImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<SearchUserGroup>,
    ));
  }
}

/// @nodoc

class _$ShareLoadedImpl implements ShareLoaded {
  const _$ShareLoadedImpl({required final List<SearchUserGroup> groups})
      : _groups = groups;

  final List<SearchUserGroup> _groups;
  @override
  List<SearchUserGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ShareState.loaded(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareLoadedImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareLoadedImplCopyWith<_$ShareLoadedImpl> get copyWith =>
      __$$ShareLoadedImplCopyWithImpl<_$ShareLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) {
    return loaded(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShareLoaded implements ShareState {
  const factory ShareLoaded({required final List<SearchUserGroup> groups}) =
      _$ShareLoadedImpl;

  List<SearchUserGroup> get groups;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareLoadedImplCopyWith<_$ShareLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareAssignedImplCopyWith<$Res> {
  factory _$$ShareAssignedImplCopyWith(
          _$ShareAssignedImpl value, $Res Function(_$ShareAssignedImpl) then) =
      __$$ShareAssignedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchUserGroup> groups});
}

/// @nodoc
class __$$ShareAssignedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareAssignedImpl>
    implements _$$ShareAssignedImplCopyWith<$Res> {
  __$$ShareAssignedImplCopyWithImpl(
      _$ShareAssignedImpl _value, $Res Function(_$ShareAssignedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$ShareAssignedImpl(
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<SearchUserGroup>,
    ));
  }
}

/// @nodoc

class _$ShareAssignedImpl implements _ShareAssigned {
  const _$ShareAssignedImpl({required final List<SearchUserGroup> groups})
      : _groups = groups;

  final List<SearchUserGroup> _groups;
  @override
  List<SearchUserGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ShareState.assigned(groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareAssignedImpl &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareAssignedImplCopyWith<_$ShareAssignedImpl> get copyWith =>
      __$$ShareAssignedImplCopyWithImpl<_$ShareAssignedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) {
    return assigned(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) {
    return assigned?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (assigned != null) {
      return assigned(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) {
    return assigned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) {
    return assigned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (assigned != null) {
      return assigned(this);
    }
    return orElse();
  }
}

abstract class _ShareAssigned implements ShareState {
  const factory _ShareAssigned({required final List<SearchUserGroup> groups}) =
      _$ShareAssignedImpl;

  List<SearchUserGroup> get groups;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareAssignedImplCopyWith<_$ShareAssignedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareErrorImplCopyWith<$Res> {
  factory _$$ShareErrorImplCopyWith(
          _$ShareErrorImpl value, $Res Function(_$ShareErrorImpl) then) =
      __$$ShareErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShareErrorImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$ShareErrorImpl>
    implements _$$ShareErrorImplCopyWith<$Res> {
  __$$ShareErrorImplCopyWithImpl(
      _$ShareErrorImpl _value, $Res Function(_$ShareErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShareErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShareErrorImpl implements ShareError {
  const _$ShareErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShareState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareErrorImplCopyWith<_$ShareErrorImpl> get copyWith =>
      __$$ShareErrorImplCopyWithImpl<_$ShareErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<SearchUserGroup> groups) loaded,
    required TResult Function(List<SearchUserGroup> groups) assigned,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<SearchUserGroup> groups)? loaded,
    TResult? Function(List<SearchUserGroup> groups)? assigned,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<SearchUserGroup> groups)? loaded,
    TResult Function(List<SearchUserGroup> groups)? assigned,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShareLoading value) loading,
    required TResult Function(ShareEmpty value) empty,
    required TResult Function(ShareLoaded value) loaded,
    required TResult Function(_ShareAssigned value) assigned,
    required TResult Function(ShareError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShareLoading value)? loading,
    TResult? Function(ShareEmpty value)? empty,
    TResult? Function(ShareLoaded value)? loaded,
    TResult? Function(_ShareAssigned value)? assigned,
    TResult? Function(ShareError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShareLoading value)? loading,
    TResult Function(ShareEmpty value)? empty,
    TResult Function(ShareLoaded value)? loaded,
    TResult Function(_ShareAssigned value)? assigned,
    TResult Function(ShareError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ShareError implements ShareState {
  const factory ShareError({required final String message}) = _$ShareErrorImpl;

  String get message;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareErrorImplCopyWith<_$ShareErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
