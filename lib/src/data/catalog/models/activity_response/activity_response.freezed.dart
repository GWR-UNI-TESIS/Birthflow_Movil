// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityResponse _$ActivityResponseFromJson(Map<String, dynamic> json) {
  return _ActivityResponse.fromJson(json);
}

/// @nodoc
mixin _$ActivityResponse {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ActivityResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActivityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityResponseCopyWith<ActivityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityResponseCopyWith<$Res> {
  factory $ActivityResponseCopyWith(
          ActivityResponse value, $Res Function(ActivityResponse) then) =
      _$ActivityResponseCopyWithImpl<$Res, ActivityResponse>;
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class _$ActivityResponseCopyWithImpl<$Res, $Val extends ActivityResponse>
    implements $ActivityResponseCopyWith<$Res> {
  _$ActivityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityResponseImplCopyWith<$Res>
    implements $ActivityResponseCopyWith<$Res> {
  factory _$$ActivityResponseImplCopyWith(_$ActivityResponseImpl value,
          $Res Function(_$ActivityResponseImpl) then) =
      __$$ActivityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String description});
}

/// @nodoc
class __$$ActivityResponseImplCopyWithImpl<$Res>
    extends _$ActivityResponseCopyWithImpl<$Res, _$ActivityResponseImpl>
    implements _$$ActivityResponseImplCopyWith<$Res> {
  __$$ActivityResponseImplCopyWithImpl(_$ActivityResponseImpl _value,
      $Res Function(_$ActivityResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
  }) {
    return _then(_$ActivityResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityResponseImpl implements _ActivityResponse {
  const _$ActivityResponseImpl({required this.id, required this.description});

  factory _$ActivityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String description;

  @override
  String toString() {
    return 'ActivityResponse(id: $id, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description);

  /// Create a copy of ActivityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityResponseImplCopyWith<_$ActivityResponseImpl> get copyWith =>
      __$$ActivityResponseImplCopyWithImpl<_$ActivityResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityResponseImplToJson(
      this,
    );
  }
}

abstract class _ActivityResponse implements ActivityResponse {
  const factory _ActivityResponse(
      {required final int id,
      required final String description}) = _$ActivityResponseImpl;

  factory _ActivityResponse.fromJson(Map<String, dynamic> json) =
      _$ActivityResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get description;

  /// Create a copy of ActivityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityResponseImplCopyWith<_$ActivityResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
