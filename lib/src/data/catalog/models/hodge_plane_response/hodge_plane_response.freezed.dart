// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hodge_plane_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HodgePlaneResponse _$HodgePlaneResponseFromJson(Map<String, dynamic> json) {
  return _HodgePlaneResponse.fromJson(json);
}

/// @nodoc
mixin _$HodgePlaneResponse {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this HodgePlaneResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HodgePlaneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HodgePlaneResponseCopyWith<HodgePlaneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HodgePlaneResponseCopyWith<$Res> {
  factory $HodgePlaneResponseCopyWith(
          HodgePlaneResponse value, $Res Function(HodgePlaneResponse) then) =
      _$HodgePlaneResponseCopyWithImpl<$Res, HodgePlaneResponse>;
  @useResult
  $Res call({int id, String code, String description});
}

/// @nodoc
class _$HodgePlaneResponseCopyWithImpl<$Res, $Val extends HodgePlaneResponse>
    implements $HodgePlaneResponseCopyWith<$Res> {
  _$HodgePlaneResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HodgePlaneResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HodgePlaneResponseImplCopyWith<$Res>
    implements $HodgePlaneResponseCopyWith<$Res> {
  factory _$$HodgePlaneResponseImplCopyWith(_$HodgePlaneResponseImpl value,
          $Res Function(_$HodgePlaneResponseImpl) then) =
      __$$HodgePlaneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, String description});
}

/// @nodoc
class __$$HodgePlaneResponseImplCopyWithImpl<$Res>
    extends _$HodgePlaneResponseCopyWithImpl<$Res, _$HodgePlaneResponseImpl>
    implements _$$HodgePlaneResponseImplCopyWith<$Res> {
  __$$HodgePlaneResponseImplCopyWithImpl(_$HodgePlaneResponseImpl _value,
      $Res Function(_$HodgePlaneResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HodgePlaneResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$HodgePlaneResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HodgePlaneResponseImpl implements _HodgePlaneResponse {
  const _$HodgePlaneResponseImpl(
      {required this.id, required this.code, required this.description});

  factory _$HodgePlaneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HodgePlaneResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String description;

  @override
  String toString() {
    return 'HodgePlaneResponse(id: $id, code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HodgePlaneResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, description);

  /// Create a copy of HodgePlaneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HodgePlaneResponseImplCopyWith<_$HodgePlaneResponseImpl> get copyWith =>
      __$$HodgePlaneResponseImplCopyWithImpl<_$HodgePlaneResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HodgePlaneResponseImplToJson(
      this,
    );
  }
}

abstract class _HodgePlaneResponse implements HodgePlaneResponse {
  const factory _HodgePlaneResponse(
      {required final int id,
      required final String code,
      required final String description}) = _$HodgePlaneResponseImpl;

  factory _HodgePlaneResponse.fromJson(Map<String, dynamic> json) =
      _$HodgePlaneResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get description;

  /// Create a copy of HodgePlaneResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HodgePlaneResponseImplCopyWith<_$HodgePlaneResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
