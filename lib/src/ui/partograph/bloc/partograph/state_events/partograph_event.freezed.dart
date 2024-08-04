// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartographEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam, String userId)
        updateCervicalDilation,
    required TResult Function(int id, String userId) deleteCervicalDilation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult? Function(int id, String userId)? deleteCervicalDilation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult Function(int id, String userId)? deleteCervicalDilation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographEventCopyWith<$Res> {
  factory $PartographEventCopyWith(
          PartographEvent value, $Res Function(PartographEvent) then) =
      _$PartographEventCopyWithImpl<$Res, PartographEvent>;
}

/// @nodoc
class _$PartographEventCopyWithImpl<$Res, $Val extends PartographEvent>
    implements $PartographEventCopyWith<$Res> {
  _$PartographEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onFetchDataImplCopyWith<$Res> {
  factory _$$onFetchDataImplCopyWith(
          _$onFetchDataImpl value, $Res Function(_$onFetchDataImpl) then) =
      __$$onFetchDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$onFetchDataImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$onFetchDataImpl>
    implements _$$onFetchDataImplCopyWith<$Res> {
  __$$onFetchDataImplCopyWithImpl(
      _$onFetchDataImpl _value, $Res Function(_$onFetchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$onFetchDataImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onFetchDataImpl implements onFetchData {
  const _$onFetchDataImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographEvent.onFetchData(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onFetchDataImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onFetchDataImplCopyWith<_$onFetchDataImpl> get copyWith =>
      __$$onFetchDataImplCopyWithImpl<_$onFetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam, String userId)
        updateCervicalDilation,
    required TResult Function(int id, String userId) deleteCervicalDilation,
  }) {
    return onFetchData(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult? Function(int id, String userId)? deleteCervicalDilation,
  }) {
    return onFetchData?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult Function(int id, String userId)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
  }) {
    return onFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
  }) {
    return onFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(this);
    }
    return orElse();
  }
}

abstract class onFetchData implements PartographEvent {
  const factory onFetchData({required final String partographId}) =
      _$onFetchDataImpl;

  String get partographId;
  @JsonKey(ignore: true)
  _$$onFetchDataImplCopyWith<_$onFetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCervicalDilationImplCopyWith<$Res> {
  factory _$$SaveCervicalDilationImplCopyWith(_$SaveCervicalDilationImpl value,
          $Res Function(_$SaveCervicalDilationImpl) then) =
      __$$SaveCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      String userId});
}

/// @nodoc
class __$$SaveCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$SaveCervicalDilationImpl>
    implements _$$SaveCervicalDilationImplCopyWith<$Res> {
  __$$SaveCervicalDilationImplCopyWithImpl(_$SaveCervicalDilationImpl _value,
      $Res Function(_$SaveCervicalDilationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? userId = null,
  }) {
    return _then(_$SaveCervicalDilationImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveCervicalDilationImpl implements SaveCervicalDilation {
  const _$SaveCervicalDilationImpl(
      {required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam,
      required this.userId});

  @override
  final String partographId;
  @override
  final double value;
  @override
  final DateTime hour;
  @override
  final bool remOrRam;
  @override
  final String userId;

  @override
  String toString() {
    return 'PartographEvent.saveCervicalDilation(partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCervicalDilationImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, value, hour, remOrRam, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCervicalDilationImplCopyWith<_$SaveCervicalDilationImpl>
      get copyWith =>
          __$$SaveCervicalDilationImplCopyWithImpl<_$SaveCervicalDilationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam, String userId)
        updateCervicalDilation,
    required TResult Function(int id, String userId) deleteCervicalDilation,
  }) {
    return saveCervicalDilation(partographId, value, hour, remOrRam, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult? Function(int id, String userId)? deleteCervicalDilation,
  }) {
    return saveCervicalDilation?.call(
        partographId, value, hour, remOrRam, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult Function(int id, String userId)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (saveCervicalDilation != null) {
      return saveCervicalDilation(partographId, value, hour, remOrRam, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
  }) {
    return saveCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
  }) {
    return saveCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (saveCervicalDilation != null) {
      return saveCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class SaveCervicalDilation implements PartographEvent {
  const factory SaveCervicalDilation(
      {required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam,
      required final String userId}) = _$SaveCervicalDilationImpl;

  String get partographId;
  double get value;
  DateTime get hour;
  bool get remOrRam;
  String get userId;
  @JsonKey(ignore: true)
  _$$SaveCervicalDilationImplCopyWith<_$SaveCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCervicalDilationImplCopyWith<$Res> {
  factory _$$UpdateCervicalDilationImplCopyWith(
          _$UpdateCervicalDilationImpl value,
          $Res Function(_$UpdateCervicalDilationImpl) then) =
      __$$UpdateCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      String userId});
}

/// @nodoc
class __$$UpdateCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$UpdateCervicalDilationImpl>
    implements _$$UpdateCervicalDilationImplCopyWith<$Res> {
  __$$UpdateCervicalDilationImplCopyWithImpl(
      _$UpdateCervicalDilationImpl _value,
      $Res Function(_$UpdateCervicalDilationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? userId = null,
  }) {
    return _then(_$UpdateCervicalDilationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCervicalDilationImpl implements UpdateCervicalDilation {
  const _$UpdateCervicalDilationImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam,
      required this.userId});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final double value;
  @override
  final DateTime hour;
  @override
  final bool remOrRam;
  @override
  final String userId;

  @override
  String toString() {
    return 'PartographEvent.updateCervicalDilation(id: $id, partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCervicalDilationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, value, hour, remOrRam, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCervicalDilationImplCopyWith<_$UpdateCervicalDilationImpl>
      get copyWith => __$$UpdateCervicalDilationImplCopyWithImpl<
          _$UpdateCervicalDilationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam, String userId)
        updateCervicalDilation,
    required TResult Function(int id, String userId) deleteCervicalDilation,
  }) {
    return updateCervicalDilation(
        id, partographId, value, hour, remOrRam, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult? Function(int id, String userId)? deleteCervicalDilation,
  }) {
    return updateCervicalDilation?.call(
        id, partographId, value, hour, remOrRam, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult Function(int id, String userId)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (updateCervicalDilation != null) {
      return updateCervicalDilation(
          id, partographId, value, hour, remOrRam, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
  }) {
    return updateCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
  }) {
    return updateCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (updateCervicalDilation != null) {
      return updateCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class UpdateCervicalDilation implements PartographEvent {
  const factory UpdateCervicalDilation(
      {required final int id,
      required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam,
      required final String userId}) = _$UpdateCervicalDilationImpl;

  int get id;
  String get partographId;
  double get value;
  DateTime get hour;
  bool get remOrRam;
  String get userId;
  @JsonKey(ignore: true)
  _$$UpdateCervicalDilationImplCopyWith<_$UpdateCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCervicalDilationImplCopyWith<$Res> {
  factory _$$DeleteCervicalDilationImplCopyWith(
          _$DeleteCervicalDilationImpl value,
          $Res Function(_$DeleteCervicalDilationImpl) then) =
      __$$DeleteCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String userId});
}

/// @nodoc
class __$$DeleteCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$DeleteCervicalDilationImpl>
    implements _$$DeleteCervicalDilationImplCopyWith<$Res> {
  __$$DeleteCervicalDilationImplCopyWithImpl(
      _$DeleteCervicalDilationImpl _value,
      $Res Function(_$DeleteCervicalDilationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$DeleteCervicalDilationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCervicalDilationImpl implements DeleteCervicalDilation {
  const _$DeleteCervicalDilationImpl({required this.id, required this.userId});

  @override
  final int id;
  @override
  final String userId;

  @override
  String toString() {
    return 'PartographEvent.deleteCervicalDilation(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCervicalDilationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCervicalDilationImplCopyWith<_$DeleteCervicalDilationImpl>
      get copyWith => __$$DeleteCervicalDilationImplCopyWithImpl<
          _$DeleteCervicalDilationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam, String userId)
        updateCervicalDilation,
    required TResult Function(int id, String userId) deleteCervicalDilation,
  }) {
    return deleteCervicalDilation(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult? Function(int id, String userId)? deleteCervicalDilation,
  }) {
    return deleteCervicalDilation?.call(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam, String userId)?
        updateCervicalDilation,
    TResult Function(int id, String userId)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (deleteCervicalDilation != null) {
      return deleteCervicalDilation(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
  }) {
    return deleteCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
  }) {
    return deleteCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    required TResult orElse(),
  }) {
    if (deleteCervicalDilation != null) {
      return deleteCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class DeleteCervicalDilation implements PartographEvent {
  const factory DeleteCervicalDilation(
      {required final int id,
      required final String userId}) = _$DeleteCervicalDilationImpl;

  int get id;
  String get userId;
  @JsonKey(ignore: true)
  _$$DeleteCervicalDilationImplCopyWith<_$DeleteCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
