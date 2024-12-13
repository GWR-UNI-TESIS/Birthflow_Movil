// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_group_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographGroupItemRequest _$PartographGroupItemRequestFromJson(
    Map<String, dynamic> json) {
  return _PartographGroupItemRequest.fromJson(json);
}

/// @nodoc
mixin _$PartographGroupItemRequest {
  String get partographId => throw _privateConstructorUsedError;
  int get partographGroupId => throw _privateConstructorUsedError;

  /// Serializes this PartographGroupItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographGroupItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographGroupItemRequestCopyWith<PartographGroupItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographGroupItemRequestCopyWith<$Res> {
  factory $PartographGroupItemRequestCopyWith(PartographGroupItemRequest value,
          $Res Function(PartographGroupItemRequest) then) =
      _$PartographGroupItemRequestCopyWithImpl<$Res,
          PartographGroupItemRequest>;
  @useResult
  $Res call({String partographId, int partographGroupId});
}

/// @nodoc
class _$PartographGroupItemRequestCopyWithImpl<$Res,
        $Val extends PartographGroupItemRequest>
    implements $PartographGroupItemRequestCopyWith<$Res> {
  _$PartographGroupItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographGroupItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? partographGroupId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographGroupItemRequestImplCopyWith<$Res>
    implements $PartographGroupItemRequestCopyWith<$Res> {
  factory _$$PartographGroupItemRequestImplCopyWith(
          _$PartographGroupItemRequestImpl value,
          $Res Function(_$PartographGroupItemRequestImpl) then) =
      __$$PartographGroupItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String partographId, int partographGroupId});
}

/// @nodoc
class __$$PartographGroupItemRequestImplCopyWithImpl<$Res>
    extends _$PartographGroupItemRequestCopyWithImpl<$Res,
        _$PartographGroupItemRequestImpl>
    implements _$$PartographGroupItemRequestImplCopyWith<$Res> {
  __$$PartographGroupItemRequestImplCopyWithImpl(
      _$PartographGroupItemRequestImpl _value,
      $Res Function(_$PartographGroupItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographGroupItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? partographGroupId = null,
  }) {
    return _then(_$PartographGroupItemRequestImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      partographGroupId: null == partographGroupId
          ? _value.partographGroupId
          : partographGroupId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographGroupItemRequestImpl implements _PartographGroupItemRequest {
  const _$PartographGroupItemRequestImpl(
      {required this.partographId, required this.partographGroupId});

  factory _$PartographGroupItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PartographGroupItemRequestImplFromJson(json);

  @override
  final String partographId;
  @override
  final int partographGroupId;

  @override
  String toString() {
    return 'PartographGroupItemRequest(partographId: $partographId, partographGroupId: $partographGroupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographGroupItemRequestImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.partographGroupId, partographGroupId) ||
                other.partographGroupId == partographGroupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partographId, partographGroupId);

  /// Create a copy of PartographGroupItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographGroupItemRequestImplCopyWith<_$PartographGroupItemRequestImpl>
      get copyWith => __$$PartographGroupItemRequestImplCopyWithImpl<
          _$PartographGroupItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographGroupItemRequestImplToJson(
      this,
    );
  }
}

abstract class _PartographGroupItemRequest
    implements PartographGroupItemRequest {
  const factory _PartographGroupItemRequest(
      {required final String partographId,
      required final int partographGroupId}) = _$PartographGroupItemRequestImpl;

  factory _PartographGroupItemRequest.fromJson(Map<String, dynamic> json) =
      _$PartographGroupItemRequestImpl.fromJson;

  @override
  String get partographId;
  @override
  int get partographGroupId;

  /// Create a copy of PartographGroupItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographGroupItemRequestImplCopyWith<_$PartographGroupItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
