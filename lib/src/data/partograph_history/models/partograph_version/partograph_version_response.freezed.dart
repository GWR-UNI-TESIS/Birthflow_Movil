// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_version_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographVersionResponse _$PartographVersionResponseFromJson(
    Map<String, dynamic> json) {
  return _PartographVersionResponse.fromJson(json);
}

/// @nodoc
mixin _$PartographVersionResponse {
  int get id => throw _privateConstructorUsedError;
  String get partographId => throw _privateConstructorUsedError;
  DateTime get changedAt => throw _privateConstructorUsedError;
  String get changedBy => throw _privateConstructorUsedError;
  String get partographDataJson => throw _privateConstructorUsedError;
  List<PartographAuditLogResponse>? get auditLogs =>
      throw _privateConstructorUsedError;

  /// Serializes this PartographVersionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartographVersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartographVersionResponseCopyWith<PartographVersionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographVersionResponseCopyWith<$Res> {
  factory $PartographVersionResponseCopyWith(PartographVersionResponse value,
          $Res Function(PartographVersionResponse) then) =
      _$PartographVersionResponseCopyWithImpl<$Res, PartographVersionResponse>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      DateTime changedAt,
      String changedBy,
      String partographDataJson,
      List<PartographAuditLogResponse>? auditLogs});
}

/// @nodoc
class _$PartographVersionResponseCopyWithImpl<$Res,
        $Val extends PartographVersionResponse>
    implements $PartographVersionResponseCopyWith<$Res> {
  _$PartographVersionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographVersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? changedAt = null,
    Object? changedBy = null,
    Object? partographDataJson = null,
    Object? auditLogs = freezed,
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
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as String,
      partographDataJson: null == partographDataJson
          ? _value.partographDataJson
          : partographDataJson // ignore: cast_nullable_to_non_nullable
              as String,
      auditLogs: freezed == auditLogs
          ? _value.auditLogs
          : auditLogs // ignore: cast_nullable_to_non_nullable
              as List<PartographAuditLogResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographVersionResponseImplCopyWith<$Res>
    implements $PartographVersionResponseCopyWith<$Res> {
  factory _$$PartographVersionResponseImplCopyWith(
          _$PartographVersionResponseImpl value,
          $Res Function(_$PartographVersionResponseImpl) then) =
      __$$PartographVersionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String partographId,
      DateTime changedAt,
      String changedBy,
      String partographDataJson,
      List<PartographAuditLogResponse>? auditLogs});
}

/// @nodoc
class __$$PartographVersionResponseImplCopyWithImpl<$Res>
    extends _$PartographVersionResponseCopyWithImpl<$Res,
        _$PartographVersionResponseImpl>
    implements _$$PartographVersionResponseImplCopyWith<$Res> {
  __$$PartographVersionResponseImplCopyWithImpl(
      _$PartographVersionResponseImpl _value,
      $Res Function(_$PartographVersionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographVersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? changedAt = null,
    Object? changedBy = null,
    Object? partographDataJson = null,
    Object? auditLogs = freezed,
  }) {
    return _then(_$PartographVersionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as String,
      partographDataJson: null == partographDataJson
          ? _value.partographDataJson
          : partographDataJson // ignore: cast_nullable_to_non_nullable
              as String,
      auditLogs: freezed == auditLogs
          ? _value._auditLogs
          : auditLogs // ignore: cast_nullable_to_non_nullable
              as List<PartographAuditLogResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartographVersionResponseImpl implements _PartographVersionResponse {
  const _$PartographVersionResponseImpl(
      {required this.id,
      required this.partographId,
      required this.changedAt,
      required this.changedBy,
      required this.partographDataJson,
      final List<PartographAuditLogResponse>? auditLogs})
      : _auditLogs = auditLogs;

  factory _$PartographVersionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographVersionResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String partographId;
  @override
  final DateTime changedAt;
  @override
  final String changedBy;
  @override
  final String partographDataJson;
  final List<PartographAuditLogResponse>? _auditLogs;
  @override
  List<PartographAuditLogResponse>? get auditLogs {
    final value = _auditLogs;
    if (value == null) return null;
    if (_auditLogs is EqualUnmodifiableListView) return _auditLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartographVersionResponse(id: $id, partographId: $partographId, changedAt: $changedAt, changedBy: $changedBy, partographDataJson: $partographDataJson, auditLogs: $auditLogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographVersionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.changedBy, changedBy) ||
                other.changedBy == changedBy) &&
            (identical(other.partographDataJson, partographDataJson) ||
                other.partographDataJson == partographDataJson) &&
            const DeepCollectionEquality()
                .equals(other._auditLogs, _auditLogs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      partographId,
      changedAt,
      changedBy,
      partographDataJson,
      const DeepCollectionEquality().hash(_auditLogs));

  /// Create a copy of PartographVersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographVersionResponseImplCopyWith<_$PartographVersionResponseImpl>
      get copyWith => __$$PartographVersionResponseImplCopyWithImpl<
          _$PartographVersionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographVersionResponseImplToJson(
      this,
    );
  }
}

abstract class _PartographVersionResponse implements PartographVersionResponse {
  const factory _PartographVersionResponse(
          {required final int id,
          required final String partographId,
          required final DateTime changedAt,
          required final String changedBy,
          required final String partographDataJson,
          final List<PartographAuditLogResponse>? auditLogs}) =
      _$PartographVersionResponseImpl;

  factory _PartographVersionResponse.fromJson(Map<String, dynamic> json) =
      _$PartographVersionResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get partographId;
  @override
  DateTime get changedAt;
  @override
  String get changedBy;
  @override
  String get partographDataJson;
  @override
  List<PartographAuditLogResponse>? get auditLogs;

  /// Create a copy of PartographVersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartographVersionResponseImplCopyWith<_$PartographVersionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
