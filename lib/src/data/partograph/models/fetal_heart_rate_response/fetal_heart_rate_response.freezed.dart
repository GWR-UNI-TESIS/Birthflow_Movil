// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetal_heart_rate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetalHeartRateResponse _$FetalHeartRateResponseFromJson(
    Map<String, dynamic> json) {
  return _FetalHeartRateResponse.fromJson(json);
}

/// @nodoc
mixin _$FetalHeartRateResponse {
  int get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetalHeartRateResponseCopyWith<FetalHeartRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetalHeartRateResponseCopyWith<$Res> {
  factory $FetalHeartRateResponseCopyWith(FetalHeartRateResponse value,
          $Res Function(FetalHeartRateResponse) then) =
      _$FetalHeartRateResponseCopyWithImpl<$Res, FetalHeartRateResponse>;
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class _$FetalHeartRateResponseCopyWithImpl<$Res,
        $Val extends FetalHeartRateResponse>
    implements $FetalHeartRateResponseCopyWith<$Res> {
  _$FetalHeartRateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$FetalHeartRateResponseImplCopyWith<$Res>
    implements $FetalHeartRateResponseCopyWith<$Res> {
  factory _$$FetalHeartRateResponseImplCopyWith(
          _$FetalHeartRateResponseImpl value,
          $Res Function(_$FetalHeartRateResponseImpl) then) =
      __$$FetalHeartRateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class __$$FetalHeartRateResponseImplCopyWithImpl<$Res>
    extends _$FetalHeartRateResponseCopyWithImpl<$Res,
        _$FetalHeartRateResponseImpl>
    implements _$$FetalHeartRateResponseImplCopyWith<$Res> {
  __$$FetalHeartRateResponseImplCopyWithImpl(
      _$FetalHeartRateResponseImpl _value,
      $Res Function(_$FetalHeartRateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$FetalHeartRateResponseImpl(
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
class _$FetalHeartRateResponseImpl implements _FetalHeartRateResponse {
  const _$FetalHeartRateResponseImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.time});

  factory _$FetalHeartRateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetalHeartRateResponseImplFromJson(json);

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
    return 'FetalHeartRateResponse(id: $id, partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetalHeartRateResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, value, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetalHeartRateResponseImplCopyWith<_$FetalHeartRateResponseImpl>
      get copyWith => __$$FetalHeartRateResponseImplCopyWithImpl<
          _$FetalHeartRateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetalHeartRateResponseImplToJson(
      this,
    );
  }
}

abstract class _FetalHeartRateResponse implements FetalHeartRateResponse {
  const factory _FetalHeartRateResponse(
      {required final int id,
      required final String partographId,
      required final String value,
      required final DateTime time}) = _$FetalHeartRateResponseImpl;

  factory _FetalHeartRateResponse.fromJson(Map<String, dynamic> json) =
      _$FetalHeartRateResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get partographId;
  @override
  String get value;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$FetalHeartRateResponseImplCopyWith<_$FetalHeartRateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
