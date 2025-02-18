// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_history_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartographHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) fetchHistory,
    required TResult Function(PartographVersion version) selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? fetchHistory,
    TResult? Function(PartographVersion version)? selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? fetchHistory,
    TResult Function(PartographVersion version)? selectVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(SelectVersion value) selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHistory value)? fetchHistory,
    TResult? Function(SelectVersion value)? selectVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographHistoryEventCopyWith<$Res> {
  factory $PartographHistoryEventCopyWith(PartographHistoryEvent value,
          $Res Function(PartographHistoryEvent) then) =
      _$PartographHistoryEventCopyWithImpl<$Res, PartographHistoryEvent>;
}

/// @nodoc
class _$PartographHistoryEventCopyWithImpl<$Res,
        $Val extends PartographHistoryEvent>
    implements $PartographHistoryEventCopyWith<$Res> {
  _$PartographHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchHistoryImplCopyWith<$Res> {
  factory _$$FetchHistoryImplCopyWith(
          _$FetchHistoryImpl value, $Res Function(_$FetchHistoryImpl) then) =
      __$$FetchHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$FetchHistoryImplCopyWithImpl<$Res>
    extends _$PartographHistoryEventCopyWithImpl<$Res, _$FetchHistoryImpl>
    implements _$$FetchHistoryImplCopyWith<$Res> {
  __$$FetchHistoryImplCopyWithImpl(
      _$FetchHistoryImpl _value, $Res Function(_$FetchHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$FetchHistoryImpl(
      null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchHistoryImpl implements FetchHistory {
  const _$FetchHistoryImpl(this.partographId);

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographHistoryEvent.fetchHistory(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHistoryImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHistoryImplCopyWith<_$FetchHistoryImpl> get copyWith =>
      __$$FetchHistoryImplCopyWithImpl<_$FetchHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) fetchHistory,
    required TResult Function(PartographVersion version) selectVersion,
  }) {
    return fetchHistory(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? fetchHistory,
    TResult? Function(PartographVersion version)? selectVersion,
  }) {
    return fetchHistory?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? fetchHistory,
    TResult Function(PartographVersion version)? selectVersion,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(SelectVersion value) selectVersion,
  }) {
    return fetchHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHistory value)? fetchHistory,
    TResult? Function(SelectVersion value)? selectVersion,
  }) {
    return fetchHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory(this);
    }
    return orElse();
  }
}

abstract class FetchHistory implements PartographHistoryEvent {
  const factory FetchHistory(final String partographId) = _$FetchHistoryImpl;

  String get partographId;

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchHistoryImplCopyWith<_$FetchHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectVersionImplCopyWith<$Res> {
  factory _$$SelectVersionImplCopyWith(
          _$SelectVersionImpl value, $Res Function(_$SelectVersionImpl) then) =
      __$$SelectVersionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PartographVersion version});
}

/// @nodoc
class __$$SelectVersionImplCopyWithImpl<$Res>
    extends _$PartographHistoryEventCopyWithImpl<$Res, _$SelectVersionImpl>
    implements _$$SelectVersionImplCopyWith<$Res> {
  __$$SelectVersionImplCopyWithImpl(
      _$SelectVersionImpl _value, $Res Function(_$SelectVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$SelectVersionImpl(
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PartographVersion,
    ));
  }
}

/// @nodoc

class _$SelectVersionImpl implements SelectVersion {
  const _$SelectVersionImpl(this.version);

  @override
  final PartographVersion version;

  @override
  String toString() {
    return 'PartographHistoryEvent.selectVersion(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectVersionImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectVersionImplCopyWith<_$SelectVersionImpl> get copyWith =>
      __$$SelectVersionImplCopyWithImpl<_$SelectVersionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) fetchHistory,
    required TResult Function(PartographVersion version) selectVersion,
  }) {
    return selectVersion(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? fetchHistory,
    TResult? Function(PartographVersion version)? selectVersion,
  }) {
    return selectVersion?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? fetchHistory,
    TResult Function(PartographVersion version)? selectVersion,
    required TResult orElse(),
  }) {
    if (selectVersion != null) {
      return selectVersion(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchHistory value) fetchHistory,
    required TResult Function(SelectVersion value) selectVersion,
  }) {
    return selectVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchHistory value)? fetchHistory,
    TResult? Function(SelectVersion value)? selectVersion,
  }) {
    return selectVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchHistory value)? fetchHistory,
    TResult Function(SelectVersion value)? selectVersion,
    required TResult orElse(),
  }) {
    if (selectVersion != null) {
      return selectVersion(this);
    }
    return orElse();
  }
}

abstract class SelectVersion implements PartographHistoryEvent {
  const factory SelectVersion(final PartographVersion version) =
      _$SelectVersionImpl;

  PartographVersion get version;

  /// Create a copy of PartographHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectVersionImplCopyWith<_$SelectVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
