// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_state_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographStateResponse _$PartographStateResponseFromJson(
    Map<String, dynamic> json) {
  return _PartographStateResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographStateResponse {
  int? get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  bool get isAchived => throw _privateConstructorUsedError;
  bool get set => throw _privateConstructorUsedError;
  bool get silenced => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  DateTime? get lastViewDate => throw _privateConstructorUsedError;

  /// Serializes this PartographStateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographStateResponseCopyWith<PartographStateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographStateResponseCopyWith<$Res> {
  factory $PartographStateResponseCopyWith(PartographStateResponse value,
          $Res Function(PartographStateResponse) then) =
      _$PartographStateResponseCopyWithImpl<$Res, PartographStateResponse>;
  @useResult
  $Res call(
      {int? id,
      String partographId,
      bool isAchived,
      bool set,
      bool silenced,
      bool favorite,
      DateTime? lastViewDate});
}

/// @nodoc
class _$PartographStateResponseCopyWithImpl<$Res,
        $Val extends PartographStateResponse>
    implements $PartographStateResponseCopyWith<$Res> {
  _$PartographStateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? isAchived = null,
    Object? set = null,
    Object? silenced = null,
    Object? favorite = null,
    Object? lastViewDate = freezed,
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
      lastViewDate: freezed == lastViewDate
          ? _value.lastViewDate
          : lastViewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographStateResponseImplCopyWith<$Res>
    implements $PartographStateResponseCopyWith<$Res> {
  factory _$$PartographStateResponseImplCopyWith(
          _$PartographStateResponseImpl value,
          $Res Function(_$PartographStateResponseImpl) then) =
      __$$PartographStateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String partographId,
      bool isAchived,
      bool set,
      bool silenced,
      bool favorite,
      DateTime? lastViewDate});
}

/// @nodoc
class __$$PartographStateResponseImplCopyWithImpl<$Res>
    extends _$PartographStateResponseCopyWithImpl<$Res,
        _$PartographStateResponseImpl>
    implements _$$PartographStateResponseImplCopyWith<$Res> {
  __$$PartographStateResponseImplCopyWithImpl(
      _$PartographStateResponseImpl _value,
      $Res Function(_$PartographStateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partographId = null,
    Object? isAchived = null,
    Object? set = null,
    Object? silenced = null,
    Object? favorite = null,
    Object? lastViewDate = freezed,
  }) {
    return _then(_$PartographStateResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      lastViewDate: freezed == lastViewDate
          ? _value.lastViewDate
          : lastViewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographStateResponseImpl implements _PartographStateResponse {
  const _$PartographStateResponseImpl(
      {this.id,
      required this.partographId,
      required this.isAchived,
      required this.set,
      required this.silenced,
      required this.favorite,
      this.lastViewDate});

  factory _$PartographStateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographStateResponseImplFromJson(json);

  @override
  final int? id;
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
  final DateTime? lastViewDate;

  @override
  String toString() {
    return 'PartographStateResponse(id: $id, partographId: $partographId, isAchived: $isAchived, set: $set, silenced: $silenced, favorite: $favorite, lastViewDate: $lastViewDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographStateResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.isAchived, isAchived) ||
                other.isAchived == isAchived) &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.silenced, silenced) ||
                other.silenced == silenced) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.lastViewDate, lastViewDate) ||
                other.lastViewDate == lastViewDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, isAchived, set,
      silenced, favorite, lastViewDate);

  /// Create a copy of PartographStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographStateResponseImplCopyWith<_$PartographStateResponseImpl>
      get copyWith => __$$PartographStateResponseImplCopyWithImpl<
          _$PartographStateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographStateResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographStateResponse implements PartographStateResponse {
  const factory _PartographStateResponse(
      {final int? id,
      required final String partographId,
      required final bool isAchived,
      required final bool set,
      required final bool silenced,
      required final bool favorite,
      final DateTime? lastViewDate}) = _$PartographStateResponseImpl;

  factory _PartographStateResponse.fromJson(Map<String, dynamic> json) =
      _$PartographStateResponseImpl.fromJson;

  @override
  int? get id;
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
  @override
  DateTime? get lastViewDate;

  /// Create a copy of PartographStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographStateResponseImplCopyWith<_$PartographStateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
