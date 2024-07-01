// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partogramas_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartogramasEvent {
  String? get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartogramas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartogramas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartogramas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartogramas value) fetchPartogramas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartogramas value)? fetchPartogramas,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartogramas value)? fetchPartogramas,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartogramasEventCopyWith<PartogramasEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartogramasEventCopyWith<$Res> {
  factory $PartogramasEventCopyWith(
          PartogramasEvent value, $Res Function(PartogramasEvent) then) =
      _$PartogramasEventCopyWithImpl<$Res, PartogramasEvent>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class _$PartogramasEventCopyWithImpl<$Res, $Val extends PartogramasEvent>
    implements $PartogramasEventCopyWith<$Res> {
  _$PartogramasEventCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPartogramasImplCopyWith<$Res>
    implements $PartogramasEventCopyWith<$Res> {
  factory _$$FetchPartogramasImplCopyWith(_$FetchPartogramasImpl value,
          $Res Function(_$FetchPartogramasImpl) then) =
      __$$FetchPartogramasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$FetchPartogramasImplCopyWithImpl<$Res>
    extends _$PartogramasEventCopyWithImpl<$Res, _$FetchPartogramasImpl>
    implements _$$FetchPartogramasImplCopyWith<$Res> {
  __$$FetchPartogramasImplCopyWithImpl(_$FetchPartogramasImpl _value,
      $Res Function(_$FetchPartogramasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$FetchPartogramasImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchPartogramasImpl implements FetchPartogramas {
  const _$FetchPartogramasImpl({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'PartogramasEvent.fetchPartogramas(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPartogramasImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPartogramasImplCopyWith<_$FetchPartogramasImpl> get copyWith =>
      __$$FetchPartogramasImplCopyWithImpl<_$FetchPartogramasImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userId) fetchPartogramas,
  }) {
    return fetchPartogramas(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userId)? fetchPartogramas,
  }) {
    return fetchPartogramas?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userId)? fetchPartogramas,
    required TResult orElse(),
  }) {
    if (fetchPartogramas != null) {
      return fetchPartogramas(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPartogramas value) fetchPartogramas,
  }) {
    return fetchPartogramas(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchPartogramas value)? fetchPartogramas,
  }) {
    return fetchPartogramas?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPartogramas value)? fetchPartogramas,
    required TResult orElse(),
  }) {
    if (fetchPartogramas != null) {
      return fetchPartogramas(this);
    }
    return orElse();
  }
}

abstract class FetchPartogramas implements PartogramasEvent {
  const factory FetchPartogramas({final String? userId}) =
      _$FetchPartogramasImpl;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$FetchPartogramasImplCopyWith<_$FetchPartogramasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
