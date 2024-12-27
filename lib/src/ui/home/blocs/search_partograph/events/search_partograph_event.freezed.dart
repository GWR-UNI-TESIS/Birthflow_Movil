// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_partograph_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchPartographEvent {
  String get name => throw _privateConstructorUsedError;
  int get filterId => throw _privateConstructorUsedError;
  int get activityId => throw _privateConstructorUsedError;
  int get hourFilterId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, int filterId, int activityId, int hourFilterId)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name, int filterId, int activityId, int hourFilterId)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, int filterId, int activityId, int hourFilterId)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchPartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPartographEventCopyWith<SearchPartographEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPartographEventCopyWith<$Res> {
  factory $SearchPartographEventCopyWith(SearchPartographEvent value,
          $Res Function(SearchPartographEvent) then) =
      _$SearchPartographEventCopyWithImpl<$Res, SearchPartographEvent>;
  @useResult
  $Res call({String name, int filterId, int activityId, int hourFilterId});
}

/// @nodoc
class _$SearchPartographEventCopyWithImpl<$Res,
        $Val extends SearchPartographEvent>
    implements $SearchPartographEventCopyWith<$Res> {
  _$SearchPartographEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? filterId = null,
    Object? activityId = null,
    Object? hourFilterId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      hourFilterId: null == hourFilterId
          ? _value.hourFilterId
          : hourFilterId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res>
    implements $SearchPartographEventCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int filterId, int activityId, int hourFilterId});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchPartographEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? filterId = null,
    Object? activityId = null,
    Object? hourFilterId = null,
  }) {
    return _then(_$SearchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      hourFilterId: null == hourFilterId
          ? _value.hourFilterId
          : hourFilterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(
      {required this.name,
      required this.filterId,
      required this.activityId,
      required this.hourFilterId});

  @override
  final String name;
  @override
  final int filterId;
  @override
  final int activityId;
  @override
  final int hourFilterId;

  @override
  String toString() {
    return 'SearchPartographEvent.search(name: $name, filterId: $filterId, activityId: $activityId, hourFilterId: $hourFilterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.hourFilterId, hourFilterId) ||
                other.hourFilterId == hourFilterId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, filterId, activityId, hourFilterId);

  /// Create a copy of SearchPartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name, int filterId, int activityId, int hourFilterId)
        search,
  }) {
    return search(name, filterId, activityId, hourFilterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name, int filterId, int activityId, int hourFilterId)?
        search,
  }) {
    return search?.call(name, filterId, activityId, hourFilterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name, int filterId, int activityId, int hourFilterId)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name, filterId, activityId, hourFilterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchPartographEvent {
  const factory _Search(
      {required final String name,
      required final int filterId,
      required final int activityId,
      required final int hourFilterId}) = _$SearchImpl;

  @override
  String get name;
  @override
  int get filterId;
  @override
  int get activityId;
  @override
  int get hourFilterId;

  /// Create a copy of SearchPartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
