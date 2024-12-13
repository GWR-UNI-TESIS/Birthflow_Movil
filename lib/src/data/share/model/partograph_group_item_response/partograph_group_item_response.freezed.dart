// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_group_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographGroupItemResponse _$PartographGroupItemResponseFromJson(
    Map<String, dynamic> json) {
  return _PartographGroupItemResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographGroupItemResponse {
  String get partographId => throw _privateConstructorUsedError;
  int get partographGroupId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PartographGroupItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographGroupItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographGroupItemResponseCopyWith<PartographGroupItemResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographGroupItemResponseCopyWith<$Res> {
  factory $PartographGroupItemResponseCopyWith(
          PartographGroupItemResponse value,
          $Res Function(PartographGroupItemResponse) then) =
      _$PartographGroupItemResponseCopyWithImpl<$Res,
          PartographGroupItemResponse>;
  @useResult
  $Res call({String partographId, int partographGroupId, DateTime createdAt});
}

/// @nodoc
class _$PartographGroupItemResponseCopyWithImpl<$Res,
        $Val extends PartographGroupItemResponse>
    implements $PartographGroupItemResponseCopyWith<$Res> {
  _$PartographGroupItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographGroupItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? partographGroupId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographGroupItemResponseImplCopyWith<$Res>
    implements $PartographGroupItemResponseCopyWith<$Res> {
  factory _$$PartographGroupItemResponseImplCopyWith(
          _$PartographGroupItemResponseImpl value,
          $Res Function(_$PartographGroupItemResponseImpl) then) =
      __$$PartographGroupItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String partographId, int partographGroupId, DateTime createdAt});
}

/// @nodoc
class __$$PartographGroupItemResponseImplCopyWithImpl<$Res>
    extends _$PartographGroupItemResponseCopyWithImpl<$Res,
        _$PartographGroupItemResponseImpl>
    implements _$$PartographGroupItemResponseImplCopyWith<$Res> {
  __$$PartographGroupItemResponseImplCopyWithImpl(
      _$PartographGroupItemResponseImpl _value,
      $Res Function(_$PartographGroupItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographGroupItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? partographGroupId = null,
    Object? createdAt = null,
  }) {
    return _then(_$PartographGroupItemResponseImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographGroupItemResponseImpl
    implements _PartographGroupItemResponse {
  const _$PartographGroupItemResponseImpl(
      {required this.partographId,
      required this.partographGroupId,
      required this.createdAt});

  factory _$PartographGroupItemResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PartographGroupItemResponseImplFromJson(json);

  @override
  final String partographId;
  @override
  final int partographGroupId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PartographGroupItemResponse(partographId: $partographId, partographGroupId: $partographGroupId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographGroupItemResponseImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.partographGroupId, partographGroupId) ||
                other.partographGroupId == partographGroupId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, partographGroupId, createdAt);

  /// Create a copy of PartographGroupItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographGroupItemResponseImplCopyWith<_$PartographGroupItemResponseImpl>
      get copyWith => __$$PartographGroupItemResponseImplCopyWithImpl<
          _$PartographGroupItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographGroupItemResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographGroupItemResponse
    implements PartographGroupItemResponse {
  const factory _PartographGroupItemResponse(
      {required final String partographId,
      required final int partographGroupId,
      required final DateTime createdAt}) = _$PartographGroupItemResponseImpl;

  factory _PartographGroupItemResponse.fromJson(Map<String, dynamic> json) =
      _$PartographGroupItemResponseImpl.fromJson;

  @override
  String get partographId;
  @override
  int get partographGroupId;
  @override
  DateTime get createdAt;

  /// Create a copy of PartographGroupItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographGroupItemResponseImplCopyWith<_$PartographGroupItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
