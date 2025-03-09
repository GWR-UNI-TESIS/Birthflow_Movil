// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partographs_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartographsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartographs,
    required TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)
        updatePartographState,
    required TResult Function(String partographId) deletePartographState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartographs,
    TResult? Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult? Function(String partographId)? deletePartographState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartographs,
    TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult Function(String partographId)? deletePartographState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartographs value) fetchPartographs,
    required TResult Function(UpdatePartographState value)
        updatePartographState,
    required TResult Function(DeletePartograph value) deletePartographState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
    TResult? Function(UpdatePartographState value)? updatePartographState,
    TResult? Function(DeletePartograph value)? deletePartographState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    TResult Function(UpdatePartographState value)? updatePartographState,
    TResult Function(DeletePartograph value)? deletePartographState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographsEventCopyWith<$Res> {
  factory $PartographsEventCopyWith(
          PartographsEvent value, $Res Function(PartographsEvent) then) =
      _$PartographsEventCopyWithImpl<$Res, PartographsEvent>;
}

/// @nodoc
class _$PartographsEventCopyWithImpl<$Res, $Val extends PartographsEvent>
    implements $PartographsEventCopyWith<$Res> {
  _$PartographsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPartographsImplCopyWith<$Res> {
  factory _$$FetchPartographsImplCopyWith(_$FetchPartographsImpl value,
          $Res Function(_$FetchPartographsImpl) then) =
      __$$FetchPartographsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$FetchPartographsImplCopyWithImpl<$Res>
    extends _$PartographsEventCopyWithImpl<$Res, _$FetchPartographsImpl>
    implements _$$FetchPartographsImplCopyWith<$Res> {
  __$$FetchPartographsImplCopyWithImpl(_$FetchPartographsImpl _value,
      $Res Function(_$FetchPartographsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$FetchPartographsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchPartographsImpl implements FetchPartographs {
  const _$FetchPartographsImpl({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'PartographsEvent.fetchPartographs(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPartographsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPartographsImplCopyWith<_$FetchPartographsImpl> get copyWith =>
      __$$FetchPartographsImplCopyWithImpl<_$FetchPartographsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartographs,
    required TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)
        updatePartographState,
    required TResult Function(String partographId) deletePartographState,
  }) {
    return fetchPartographs(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartographs,
    TResult? Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult? Function(String partographId)? deletePartographState,
  }) {
    return fetchPartographs?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartographs,
    TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult Function(String partographId)? deletePartographState,
    required TResult orElse(),
  }) {
    if (fetchPartographs != null) {
      return fetchPartographs(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartographs value) fetchPartographs,
    required TResult Function(UpdatePartographState value)
        updatePartographState,
    required TResult Function(DeletePartograph value) deletePartographState,
  }) {
    return fetchPartographs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
    TResult? Function(UpdatePartographState value)? updatePartographState,
    TResult? Function(DeletePartograph value)? deletePartographState,
  }) {
    return fetchPartographs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    TResult Function(UpdatePartographState value)? updatePartographState,
    TResult Function(DeletePartograph value)? deletePartographState,
    required TResult orElse(),
  }) {
    if (fetchPartographs != null) {
      return fetchPartographs(this);
    }
    return orElse();
  }
}

abstract class FetchPartographs implements PartographsEvent {
  const factory FetchPartographs({final String? userId}) =
      _$FetchPartographsImpl;

  String? get userId;

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPartographsImplCopyWith<_$FetchPartographsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePartographStateImplCopyWith<$Res> {
  factory _$$UpdatePartographStateImplCopyWith(
          _$UpdatePartographStateImpl value,
          $Res Function(_$UpdatePartographStateImpl) then) =
      __$$UpdatePartographStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      bool isAchived,
      bool set,
      bool silenced,
      bool favorite});
}

/// @nodoc
class __$$UpdatePartographStateImplCopyWithImpl<$Res>
    extends _$PartographsEventCopyWithImpl<$Res, _$UpdatePartographStateImpl>
    implements _$$UpdatePartographStateImplCopyWith<$Res> {
  __$$UpdatePartographStateImplCopyWithImpl(_$UpdatePartographStateImpl _value,
      $Res Function(_$UpdatePartographStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? isAchived = null,
    Object? set = null,
    Object? silenced = null,
    Object? favorite = null,
  }) {
    return _then(_$UpdatePartographStateImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      isAchived: null == isAchived
          ? _value.isAchived
          : isAchived // ignore: cast_nullable_to_non_nullable
              as bool,
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as bool,
      silenced: null == silenced
          ? _value.silenced
          : silenced // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdatePartographStateImpl implements UpdatePartographState {
  const _$UpdatePartographStateImpl(
      {required this.partographId,
      required this.isAchived,
      required this.set,
      required this.silenced,
      required this.favorite});

  @override
  final String partographId;
  @override
  final bool isAchived;
  @override
  final bool set;
  @override
  final bool silenced;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'PartographsEvent.updatePartographState(partographId: $partographId, isAchived: $isAchived, set: $set, silenced: $silenced, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePartographStateImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.isAchived, isAchived) ||
                other.isAchived == isAchived) &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.silenced, silenced) ||
                other.silenced == silenced) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, partographId, isAchived, set, silenced, favorite);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePartographStateImplCopyWith<_$UpdatePartographStateImpl>
      get copyWith => __$$UpdatePartographStateImplCopyWithImpl<
          _$UpdatePartographStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartographs,
    required TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)
        updatePartographState,
    required TResult Function(String partographId) deletePartographState,
  }) {
    return updatePartographState(
        partographId, isAchived, set, silenced, favorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartographs,
    TResult? Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult? Function(String partographId)? deletePartographState,
  }) {
    return updatePartographState?.call(
        partographId, isAchived, set, silenced, favorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartographs,
    TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult Function(String partographId)? deletePartographState,
    required TResult orElse(),
  }) {
    if (updatePartographState != null) {
      return updatePartographState(
          partographId, isAchived, set, silenced, favorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartographs value) fetchPartographs,
    required TResult Function(UpdatePartographState value)
        updatePartographState,
    required TResult Function(DeletePartograph value) deletePartographState,
  }) {
    return updatePartographState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
    TResult? Function(UpdatePartographState value)? updatePartographState,
    TResult? Function(DeletePartograph value)? deletePartographState,
  }) {
    return updatePartographState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    TResult Function(UpdatePartographState value)? updatePartographState,
    TResult Function(DeletePartograph value)? deletePartographState,
    required TResult orElse(),
  }) {
    if (updatePartographState != null) {
      return updatePartographState(this);
    }
    return orElse();
  }
}

abstract class UpdatePartographState implements PartographsEvent {
  const factory UpdatePartographState(
      {required final String partographId,
      required final bool isAchived,
      required final bool set,
      required final bool silenced,
      required final bool favorite}) = _$UpdatePartographStateImpl;

  String get partographId;
  bool get isAchived;
  bool get set;
  bool get silenced;
  bool get favorite;

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePartographStateImplCopyWith<_$UpdatePartographStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePartographImplCopyWith<$Res> {
  factory _$$DeletePartographImplCopyWith(_$DeletePartographImpl value,
          $Res Function(_$DeletePartographImpl) then) =
      __$$DeletePartographImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$DeletePartographImplCopyWithImpl<$Res>
    extends _$PartographsEventCopyWithImpl<$Res, _$DeletePartographImpl>
    implements _$$DeletePartographImplCopyWith<$Res> {
  __$$DeletePartographImplCopyWithImpl(_$DeletePartographImpl _value,
      $Res Function(_$DeletePartographImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$DeletePartographImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePartographImpl implements DeletePartograph {
  const _$DeletePartographImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographsEvent.deletePartographState(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePartographImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePartographImplCopyWith<_$DeletePartographImpl> get copyWith =>
      __$$DeletePartographImplCopyWithImpl<_$DeletePartographImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartographs,
    required TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)
        updatePartographState,
    required TResult Function(String partographId) deletePartographState,
  }) {
    return deletePartographState(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartographs,
    TResult? Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult? Function(String partographId)? deletePartographState,
  }) {
    return deletePartographState?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartographs,
    TResult Function(String partographId, bool isAchived, bool set,
            bool silenced, bool favorite)?
        updatePartographState,
    TResult Function(String partographId)? deletePartographState,
    required TResult orElse(),
  }) {
    if (deletePartographState != null) {
      return deletePartographState(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartographs value) fetchPartographs,
    required TResult Function(UpdatePartographState value)
        updatePartographState,
    required TResult Function(DeletePartograph value) deletePartographState,
  }) {
    return deletePartographState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
    TResult? Function(UpdatePartographState value)? updatePartographState,
    TResult? Function(DeletePartograph value)? deletePartographState,
  }) {
    return deletePartographState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    TResult Function(UpdatePartographState value)? updatePartographState,
    TResult Function(DeletePartograph value)? deletePartographState,
    required TResult orElse(),
  }) {
    if (deletePartographState != null) {
      return deletePartographState(this);
    }
    return orElse();
  }
}

abstract class DeletePartograph implements PartographsEvent {
  const factory DeletePartograph({required final String partographId}) =
      _$DeletePartographImpl;

  String get partographId;

  /// Create a copy of PartographsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePartographImplCopyWith<_$DeletePartographImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
