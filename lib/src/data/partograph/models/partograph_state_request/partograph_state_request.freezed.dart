// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_state_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographStateRequest _$PartographStateRequestFromJson(
    Map<String, dynamic> json) {
  return _PartographStateRequest.fromJson(json);
}

/// @nodoc
mixin _$PartographStateRequest {
  String get partographId => throw _privateConstructorUsedError;
  bool get isAchived => throw _privateConstructorUsedError;
  bool get set => throw _privateConstructorUsedError;
  bool get silenced => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;

  /// Serializes this PartographStateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographStateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographStateRequestCopyWith<PartographStateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographStateRequestCopyWith<$Res> {
  factory $PartographStateRequestCopyWith(PartographStateRequest value,
          $Res Function(PartographStateRequest) then) =
      _$PartographStateRequestCopyWithImpl<$Res, PartographStateRequest>;
  @useResult
  $Res call(
      {String partographId,
      bool isAchived,
      bool set,
      bool silenced,
      bool favorite});
}

/// @nodoc
class _$PartographStateRequestCopyWithImpl<$Res,
        $Val extends PartographStateRequest>
    implements $PartographStateRequestCopyWith<$Res> {
  _$PartographStateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographStateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? isAchived = null,
    Object? set = null,
    Object? silenced = null,
    Object? favorite = null,
  }) {
    return _then(_value.copyWith(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      isAchived: null == isAchived
          ? _value.isAchived
          : isAchived // ignore: cast_nullable_to_non_nullable
              as bool,
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as bool,
      silenced: null == silenced
          ? _value.silenced
          : silenced // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographStateRequestImplCopyWith<$Res>
    implements $PartographStateRequestCopyWith<$Res> {
  factory _$$PartographStateRequestImplCopyWith(
          _$PartographStateRequestImpl value,
          $Res Function(_$PartographStateRequestImpl) then) =
      __$$PartographStateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partographId,
      bool isAchived,
      bool set,
      bool silenced,
      bool favorite});
}

/// @nodoc
class __$$PartographStateRequestImplCopyWithImpl<$Res>
    extends _$PartographStateRequestCopyWithImpl<$Res,
        _$PartographStateRequestImpl>
    implements _$$PartographStateRequestImplCopyWith<$Res> {
  __$$PartographStateRequestImplCopyWithImpl(
      _$PartographStateRequestImpl _value,
      $Res Function(_$PartographStateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographStateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? isAchived = null,
    Object? set = null,
    Object? silenced = null,
    Object? favorite = null,
  }) {
    return _then(_$PartographStateRequestImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      isAchived: null == isAchived
          ? _value.isAchived
          : isAchived // ignore: cast_nullable_to_non_nullable
              as bool,
      set: null == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as bool,
      silenced: null == silenced
          ? _value.silenced
          : silenced // ignore: cast_nullable_to_non_nullable
              as bool,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographStateRequestImpl implements _PartographStateRequest {
  const _$PartographStateRequestImpl(
      {required this.partographId,
      required this.isAchived,
      required this.set,
      required this.silenced,
      required this.favorite});

  factory _$PartographStateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographStateRequestImplFromJson(json);

  @override
  final String partographId;
  @override
  final bool isAchived;
  @override
  final bool set;
  @override
  final bool silenced;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'PartographStateRequest(partographId: $partographId, isAchived: $isAchived, set: $set, silenced: $silenced, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographStateRequestImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.isAchived, isAchived) ||
                other.isAchived == isAchived) &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.silenced, silenced) ||
                other.silenced == silenced) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, partographId, isAchived, set, silenced, favorite);

  /// Create a copy of PartographStateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographStateRequestImplCopyWith<_$PartographStateRequestImpl>
      get copyWith => __$$PartographStateRequestImplCopyWithImpl<
          _$PartographStateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographStateRequestImplToJson(
      this,
    );
  }
}

abstract class _PartographStateRequest implements PartographStateRequest {
  const factory _PartographStateRequest(
      {required final String partographId,
      required final bool isAchived,
      required final bool set,
      required final bool silenced,
      required final bool favorite}) = _$PartographStateRequestImpl;

  factory _PartographStateRequest.fromJson(Map<String, dynamic> json) =
      _$PartographStateRequestImpl.fromJson;

  @override
  String get partographId;
  @override
  bool get isAchived;
  @override
  bool get set;
  @override
  bool get silenced;
  @override
  bool get favorite;

  /// Create a copy of PartographStateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographStateRequestImplCopyWith<_$PartographStateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
