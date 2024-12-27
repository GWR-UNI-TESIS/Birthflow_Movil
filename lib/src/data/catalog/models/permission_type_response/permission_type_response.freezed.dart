// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PermissionTypeResponse _$PermissionTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _PermissionTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$PermissionTypeResponse {
  int get id => throw _privateConstructorUsedError;
  String get identificator => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  /// Serializes this PermissionTypeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PermissionTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionTypeResponseCopyWith<PermissionTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionTypeResponseCopyWith<$Res> {
  factory $PermissionTypeResponseCopyWith(PermissionTypeResponse value,
          $Res Function(PermissionTypeResponse) then) =
      _$PermissionTypeResponseCopyWithImpl<$Res, PermissionTypeResponse>;
  @useResult
  $Res call(
      {int id,
      String identificator,
      String name,
      String description,
      DateTime createAt});
}

/// @nodoc
class _$PermissionTypeResponseCopyWithImpl<$Res,
        $Val extends PermissionTypeResponse>
    implements $PermissionTypeResponseCopyWith<$Res> {
  _$PermissionTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PermissionTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identificator = null,
    Object? name = null,
    Object? description = null,
    Object? createAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identificator: null == identificator
          ? _value.identificator
          : identificator // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionTypeResponseImplCopyWith<$Res>
    implements $PermissionTypeResponseCopyWith<$Res> {
  factory _$$PermissionTypeResponseImplCopyWith(
          _$PermissionTypeResponseImpl value,
          $Res Function(_$PermissionTypeResponseImpl) then) =
      __$$PermissionTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String identificator,
      String name,
      String description,
      DateTime createAt});
}

/// @nodoc
class __$$PermissionTypeResponseImplCopyWithImpl<$Res>
    extends _$PermissionTypeResponseCopyWithImpl<$Res,
        _$PermissionTypeResponseImpl>
    implements _$$PermissionTypeResponseImplCopyWith<$Res> {
  __$$PermissionTypeResponseImplCopyWithImpl(
      _$PermissionTypeResponseImpl _value,
      $Res Function(_$PermissionTypeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PermissionTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identificator = null,
    Object? name = null,
    Object? description = null,
    Object? createAt = null,
  }) {
    return _then(_$PermissionTypeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identificator: null == identificator
          ? _value.identificator
          : identificator // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionTypeResponseImpl implements _PermissionTypeResponse {
  const _$PermissionTypeResponseImpl(
      {required this.id,
      required this.identificator,
      required this.name,
      required this.description,
      required this.createAt});

  factory _$PermissionTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionTypeResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String identificator;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime createAt;

  @override
  String toString() {
    return 'PermissionTypeResponse(id: $id, identificator: $identificator, name: $name, description: $description, createAt: $createAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionTypeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identificator, identificator) ||
                other.identificator == identificator) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, identificator, name, description, createAt);

  /// Create a copy of PermissionTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionTypeResponseImplCopyWith<_$PermissionTypeResponseImpl>
      get copyWith => __$$PermissionTypeResponseImplCopyWithImpl<
          _$PermissionTypeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _PermissionTypeResponse implements PermissionTypeResponse {
  const factory _PermissionTypeResponse(
      {required final int id,
      required final String identificator,
      required final String name,
      required final String description,
      required final DateTime createAt}) = _$PermissionTypeResponseImpl;

  factory _PermissionTypeResponse.fromJson(Map<String, dynamic> json) =
      _$PermissionTypeResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get identificator;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get createAt;

  /// Create a copy of PermissionTypeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionTypeResponseImplCopyWith<_$PermissionTypeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
