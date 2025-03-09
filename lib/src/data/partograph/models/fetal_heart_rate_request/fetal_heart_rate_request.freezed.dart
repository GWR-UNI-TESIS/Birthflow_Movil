// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetal_heart_rate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetalHeartRateRequest _$FetalHeartRateRequestFromJson(
    Map<String, dynamic> json) {
  return _FetalHeartRateRequest.fromJson(json);
}

/// @nodoc
mixin _$FetalHeartRateRequest {
  int get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  /// Serializes this FetalHeartRateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FetalHeartRateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetalHeartRateRequestCopyWith<FetalHeartRateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetalHeartRateRequestCopyWith<$Res> {
  factory $FetalHeartRateRequestCopyWith(FetalHeartRateRequest value,
          $Res Function(FetalHeartRateRequest) then) =
      _$FetalHeartRateRequestCopyWithImpl<$Res, FetalHeartRateRequest>;
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class _$FetalHeartRateRequestCopyWithImpl<$Res,
        $Val extends FetalHeartRateRequest>
    implements $FetalHeartRateRequestCopyWith<$Res> {
  _$FetalHeartRateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetalHeartRateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
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
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetalHeartRateRequestImplCopyWith<$Res>
    implements $FetalHeartRateRequestCopyWith<$Res> {
  factory _$$FetalHeartRateRequestImplCopyWith(
          _$FetalHeartRateRequestImpl value,
          $Res Function(_$FetalHeartRateRequestImpl) then) =
      __$$FetalHeartRateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class __$$FetalHeartRateRequestImplCopyWithImpl<$Res>
    extends _$FetalHeartRateRequestCopyWithImpl<$Res,
        _$FetalHeartRateRequestImpl>
    implements _$$FetalHeartRateRequestImplCopyWith<$Res> {
  __$$FetalHeartRateRequestImplCopyWithImpl(_$FetalHeartRateRequestImpl _value,
      $Res Function(_$FetalHeartRateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetalHeartRateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$FetalHeartRateRequestImpl(
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
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetalHeartRateRequestImpl implements _FetalHeartRateRequest {
  const _$FetalHeartRateRequestImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.time});

  factory _$FetalHeartRateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetalHeartRateRequestImplFromJson(json);

  @override
  final int id;
  @override
  final String partographId;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'FetalHeartRateRequest(id: $id, partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetalHeartRateRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, value, time);

  /// Create a copy of FetalHeartRateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetalHeartRateRequestImplCopyWith<_$FetalHeartRateRequestImpl>
      get copyWith => __$$FetalHeartRateRequestImplCopyWithImpl<
          _$FetalHeartRateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetalHeartRateRequestImplToJson(
      this,
    );
  }
}

abstract class _FetalHeartRateRequest implements FetalHeartRateRequest {
  const factory _FetalHeartRateRequest(
      {required final int id,
      required final String partographId,
      required final String value,
      required final DateTime time}) = _$FetalHeartRateRequestImpl;

  factory _FetalHeartRateRequest.fromJson(Map<String, dynamic> json) =
      _$FetalHeartRateRequestImpl.fromJson;

  @override
  int get id;
  @override
  String get partographId;
  @override
  String get value;
  @override
  DateTime get time;

  /// Create a copy of FetalHeartRateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetalHeartRateRequestImplCopyWith<_$FetalHeartRateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
