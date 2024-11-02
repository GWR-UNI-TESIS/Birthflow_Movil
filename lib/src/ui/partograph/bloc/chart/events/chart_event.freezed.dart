// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartEvent {
  Partograph get partograph => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Partograph partograph) onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Partograph partograph)? onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Partograph partograph)? onRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnRefresh value) onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnRefresh value)? onRefresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartEventCopyWith<ChartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartEventCopyWith<$Res> {
  factory $ChartEventCopyWith(
          ChartEvent value, $Res Function(ChartEvent) then) =
      _$ChartEventCopyWithImpl<$Res, ChartEvent>;
  @useResult
  $Res call({Partograph partograph});
}

/// @nodoc
class _$ChartEventCopyWithImpl<$Res, $Val extends ChartEvent>
    implements $ChartEventCopyWith<$Res> {
  _$ChartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partograph = null,
  }) {
    return _then(_value.copyWith(
      partograph: null == partograph
          ? _value.partograph
          : partograph // ignore: cast_nullable_to_non_nullable
              as Partograph,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnRefreshImplCopyWith<$Res>
    implements $ChartEventCopyWith<$Res> {
  factory _$$OnRefreshImplCopyWith(
          _$OnRefreshImpl value, $Res Function(_$OnRefreshImpl) then) =
      __$$OnRefreshImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Partograph partograph});
}

/// @nodoc
class __$$OnRefreshImplCopyWithImpl<$Res>
    extends _$ChartEventCopyWithImpl<$Res, _$OnRefreshImpl>
    implements _$$OnRefreshImplCopyWith<$Res> {
  __$$OnRefreshImplCopyWithImpl(
      _$OnRefreshImpl _value, $Res Function(_$OnRefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partograph = null,
  }) {
    return _then(_$OnRefreshImpl(
      partograph: null == partograph
          ? _value.partograph
          : partograph // ignore: cast_nullable_to_non_nullable
              as Partograph,
    ));
  }
}

/// @nodoc

class _$OnRefreshImpl implements OnRefresh {
  const _$OnRefreshImpl({required this.partograph});

  @override
  final Partograph partograph;

  @override
  String toString() {
    return 'ChartEvent.onRefresh(partograph: $partograph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRefreshImpl &&
            (identical(other.partograph, partograph) ||
                other.partograph == partograph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partograph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRefreshImplCopyWith<_$OnRefreshImpl> get copyWith =>
      __$$OnRefreshImplCopyWithImpl<_$OnRefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Partograph partograph) onRefresh,
  }) {
    return onRefresh(partograph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Partograph partograph)? onRefresh,
  }) {
    return onRefresh?.call(partograph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Partograph partograph)? onRefresh,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(partograph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnRefresh value) onRefresh,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnRefresh value)? onRefresh,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnRefresh value)? onRefresh,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class OnRefresh implements ChartEvent {
  const factory OnRefresh({required final Partograph partograph}) =
      _$OnRefreshImpl;

  @override
  Partograph get partograph;
  @override
  @JsonKey(ignore: true)
  _$$OnRefreshImplCopyWith<_$OnRefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
