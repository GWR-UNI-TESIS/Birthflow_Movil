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
  int? get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) fetchPartographs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? fetchPartographs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? fetchPartographs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartographs value) fetchPartographs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartographsEventCopyWith<PartographsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographsEventCopyWith<$Res> {
  factory $PartographsEventCopyWith(
          PartographsEvent value, $Res Function(PartographsEvent) then) =
      _$PartographsEventCopyWithImpl<$Res, PartographsEvent>;
  @useResult
  $Res call({int? userId});
}

/// @nodoc
class _$PartographsEventCopyWithImpl<$Res, $Val extends PartographsEvent>
    implements $PartographsEventCopyWith<$Res> {
  _$PartographsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPartographsImplCopyWith<$Res>
    implements $PartographsEventCopyWith<$Res> {
  factory _$$FetchPartographsImplCopyWith(_$FetchPartographsImpl value,
          $Res Function(_$FetchPartographsImpl) then) =
      __$$FetchPartographsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId});
}

/// @nodoc
class __$$FetchPartographsImplCopyWithImpl<$Res>
    extends _$PartographsEventCopyWithImpl<$Res, _$FetchPartographsImpl>
    implements _$$FetchPartographsImplCopyWith<$Res> {
  __$$FetchPartographsImplCopyWithImpl(_$FetchPartographsImpl _value,
      $Res Function(_$FetchPartographsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$FetchPartographsImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchPartographsImpl implements FetchPartographs {
  const _$FetchPartographsImpl({this.userId});

  @override
  final int? userId;

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPartographsImplCopyWith<_$FetchPartographsImpl> get copyWith =>
      __$$FetchPartographsImplCopyWithImpl<_$FetchPartographsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? userId) fetchPartographs,
  }) {
    return fetchPartographs(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? userId)? fetchPartographs,
  }) {
    return fetchPartographs?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? userId)? fetchPartographs,
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
  }) {
    return fetchPartographs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartographs value)? fetchPartographs,
  }) {
    return fetchPartographs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartographs value)? fetchPartographs,
    required TResult orElse(),
  }) {
    if (fetchPartographs != null) {
      return fetchPartographs(this);
    }
    return orElse();
  }
}

abstract class FetchPartographs implements PartographsEvent {
  const factory FetchPartographs({final int? userId}) = _$FetchPartographsImpl;

  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$FetchPartographsImplCopyWith<_$FetchPartographsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
