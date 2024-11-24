// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositionResponse _$PositionResponseFromJson(Map<String, dynamic> json) {
  return _PositionResponse.fromJson(json);
}

/// @nodoc
mixin _$PositionResponse {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get chartPosition => throw _privateConstructorUsedError;

  /// Serializes this PositionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionResponseCopyWith<PositionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionResponseCopyWith<$Res> {
  factory $PositionResponseCopyWith(
          PositionResponse value, $Res Function(PositionResponse) then) =
      _$PositionResponseCopyWithImpl<$Res, PositionResponse>;
  @useResult
  $Res call({int id, String code, String description, double chartPosition});
}

/// @nodoc
class _$PositionResponseCopyWithImpl<$Res, $Val extends PositionResponse>
    implements $PositionResponseCopyWith<$Res> {
  _$PositionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? chartPosition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      chartPosition: null == chartPosition
          ? _value.chartPosition
          : chartPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionResponseImplCopyWith<$Res>
    implements $PositionResponseCopyWith<$Res> {
  factory _$$PositionResponseImplCopyWith(_$PositionResponseImpl value,
          $Res Function(_$PositionResponseImpl) then) =
      __$$PositionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, String description, double chartPosition});
}

/// @nodoc
class __$$PositionResponseImplCopyWithImpl<$Res>
    extends _$PositionResponseCopyWithImpl<$Res, _$PositionResponseImpl>
    implements _$$PositionResponseImplCopyWith<$Res> {
  __$$PositionResponseImplCopyWithImpl(_$PositionResponseImpl _value,
      $Res Function(_$PositionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
    Object? chartPosition = null,
  }) {
    return _then(_$PositionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      chartPosition: null == chartPosition
          ? _value.chartPosition
          : chartPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionResponseImpl implements _PositionResponse {
  const _$PositionResponseImpl(
      {required this.id,
      required this.code,
      required this.description,
      required this.chartPosition});

  factory _$PositionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String description;
  @override
  final double chartPosition;

  @override
  String toString() {
    return 'PositionResponse(id: $id, code: $code, description: $description, chartPosition: $chartPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.chartPosition, chartPosition) ||
                other.chartPosition == chartPosition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, description, chartPosition);

  /// Create a copy of PositionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionResponseImplCopyWith<_$PositionResponseImpl> get copyWith =>
      __$$PositionResponseImplCopyWithImpl<_$PositionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionResponseImplToJson(
      this,
    );
  }
}

abstract class _PositionResponse implements PositionResponse {
  const factory _PositionResponse(
      {required final int id,
      required final String code,
      required final String description,
      required final double chartPosition}) = _$PositionResponseImpl;

  factory _PositionResponse.fromJson(Map<String, dynamic> json) =
      _$PositionResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get description;
  @override
  double get chartPosition;

  /// Create a copy of PositionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionResponseImplCopyWith<_$PositionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
