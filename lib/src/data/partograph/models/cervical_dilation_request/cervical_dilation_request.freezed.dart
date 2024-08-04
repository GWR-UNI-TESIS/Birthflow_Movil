// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cervical_dilation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CervicalDilationRequest _$CervicalDilationRequestFromJson(
    Map<String, dynamic> json) {
  return _CervicalDilationRequest.fromJson(json);
}

/// @nodoc
mixin _$CervicalDilationRequest {
  int? get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  DateTime get hour => throw _privateConstructorUsedError;
  bool get remOrRam => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CervicalDilationRequestCopyWith<CervicalDilationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CervicalDilationRequestCopyWith<$Res> {
  factory $CervicalDilationRequestCopyWith(CervicalDilationRequest value,
          $Res Function(CervicalDilationRequest) then) =
      _$CervicalDilationRequestCopyWithImpl<$Res, CervicalDilationRequest>;
  @useResult
  $Res call(
      {int? id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      String userId});
}

/// @nodoc
class _$CervicalDilationRequestCopyWithImpl<$Res,
        $Val extends CervicalDilationRequest>
    implements $CervicalDilationRequestCopyWith<$Res> {
  _$CervicalDilationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CervicalDilationRequestImplCopyWith<$Res>
    implements $CervicalDilationRequestCopyWith<$Res> {
  factory _$$CervicalDilationRequestImplCopyWith(
          _$CervicalDilationRequestImpl value,
          $Res Function(_$CervicalDilationRequestImpl) then) =
      __$$CervicalDilationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam,
      String userId});
}

/// @nodoc
class __$$CervicalDilationRequestImplCopyWithImpl<$Res>
    extends _$CervicalDilationRequestCopyWithImpl<$Res,
        _$CervicalDilationRequestImpl>
    implements _$$CervicalDilationRequestImplCopyWith<$Res> {
  __$$CervicalDilationRequestImplCopyWithImpl(
      _$CervicalDilationRequestImpl _value,
      $Res Function(_$CervicalDilationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
    Object? userId = null,
  }) {
    return _then(_$CervicalDilationRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
@JsonSerializable()
class _$CervicalDilationRequestImpl implements _CervicalDilationRequest {
  const _$CervicalDilationRequestImpl(
      {this.id,
      required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam,
      required this.userId});

  factory _$CervicalDilationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CervicalDilationRequestImplFromJson(json);

  @override
  final int? id;
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
    return 'CervicalDilationRequest(id: $id, partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CervicalDilationRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, value, hour, remOrRam, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CervicalDilationRequestImplCopyWith<_$CervicalDilationRequestImpl>
      get copyWith => __$$CervicalDilationRequestImplCopyWithImpl<
          _$CervicalDilationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CervicalDilationRequestImplToJson(
      this,
    );
  }
}

abstract class _CervicalDilationRequest implements CervicalDilationRequest {
  const factory _CervicalDilationRequest(
      {final int? id,
      required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam,
      required final String userId}) = _$CervicalDilationRequestImpl;

  factory _CervicalDilationRequest.fromJson(Map<String, dynamic> json) =
      _$CervicalDilationRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String get partographId;
  @override
  double get value;
  @override
  DateTime get hour;
  @override
  bool get remOrRam;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$CervicalDilationRequestImplCopyWith<_$CervicalDilationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
