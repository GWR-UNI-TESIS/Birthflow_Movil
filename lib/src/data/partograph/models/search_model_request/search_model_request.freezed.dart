// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchModelRequest _$SearchModelRequestFromJson(Map<String, dynamic> json) {
  return _SearchModelRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchModelRequest {
  String get name => throw _privateConstructorUsedError;
  int get filterId => throw _privateConstructorUsedError;
  int get activityId => throw _privateConstructorUsedError;
  int get hourFilterId => throw _privateConstructorUsedError;

  /// Serializes this SearchModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchModelRequestCopyWith<SearchModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelRequestCopyWith<$Res> {
  factory $SearchModelRequestCopyWith(
          SearchModelRequest value, $Res Function(SearchModelRequest) then) =
      _$SearchModelRequestCopyWithImpl<$Res, SearchModelRequest>;
  @useResult
  $Res call({String name, int filterId, int activityId, int hourFilterId});
}

/// @nodoc
class _$SearchModelRequestCopyWithImpl<$Res, $Val extends SearchModelRequest>
    implements $SearchModelRequestCopyWith<$Res> {
  _$SearchModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? filterId = null,
    Object? activityId = null,
    Object? hourFilterId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      hourFilterId: null == hourFilterId
          ? _value.hourFilterId
          : hourFilterId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelRequestImplCopyWith<$Res>
    implements $SearchModelRequestCopyWith<$Res> {
  factory _$$SearchModelRequestImplCopyWith(_$SearchModelRequestImpl value,
          $Res Function(_$SearchModelRequestImpl) then) =
      __$$SearchModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int filterId, int activityId, int hourFilterId});
}

/// @nodoc
class __$$SearchModelRequestImplCopyWithImpl<$Res>
    extends _$SearchModelRequestCopyWithImpl<$Res, _$SearchModelRequestImpl>
    implements _$$SearchModelRequestImplCopyWith<$Res> {
  __$$SearchModelRequestImplCopyWithImpl(_$SearchModelRequestImpl _value,
      $Res Function(_$SearchModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? filterId = null,
    Object? activityId = null,
    Object? hourFilterId = null,
  }) {
    return _then(_$SearchModelRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int,
      hourFilterId: null == hourFilterId
          ? _value.hourFilterId
          : hourFilterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelRequestImpl implements _SearchModelRequest {
  const _$SearchModelRequestImpl(
      {required this.name,
      required this.filterId,
      required this.activityId,
      required this.hourFilterId});

  factory _$SearchModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelRequestImplFromJson(json);

  @override
  final String name;
  @override
  final int filterId;
  @override
  final int activityId;
  @override
  final int hourFilterId;

  @override
  String toString() {
    return 'SearchModelRequest(name: $name, filterId: $filterId, activityId: $activityId, hourFilterId: $hourFilterId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.hourFilterId, hourFilterId) ||
                other.hourFilterId == hourFilterId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, filterId, activityId, hourFilterId);

  /// Create a copy of SearchModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelRequestImplCopyWith<_$SearchModelRequestImpl> get copyWith =>
      __$$SearchModelRequestImplCopyWithImpl<_$SearchModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelRequestImplToJson(
      this,
    );
  }
}

abstract class _SearchModelRequest implements SearchModelRequest {
  const factory _SearchModelRequest(
      {required final String name,
      required final int filterId,
      required final int activityId,
      required final int hourFilterId}) = _$SearchModelRequestImpl;

  factory _SearchModelRequest.fromJson(Map<String, dynamic> json) =
      _$SearchModelRequestImpl.fromJson;

  @override
  String get name;
  @override
  int get filterId;
  @override
  int get activityId;
  @override
  int get hourFilterId;

  /// Create a copy of SearchModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchModelRequestImplCopyWith<_$SearchModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
