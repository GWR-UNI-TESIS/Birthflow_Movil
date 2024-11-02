// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkTimeResponse _$WorkTimeResponseFromJson(Map<String, dynamic> json) {
  return _WorkTimeResponse.fromJson(json);
}

/// @nodoc
mixin _$WorkTimeResponse {
  String get id => throw _privateConstructorUsedError;
  String get paridad => throw _privateConstructorUsedError;
  String get posicion => throw _privateConstructorUsedError;
  String get membrana => throw _privateConstructorUsedError;
  List<WorkTimeItemResponse> get workTimeItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkTimeResponseCopyWith<WorkTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeResponseCopyWith<$Res> {
  factory $WorkTimeResponseCopyWith(
          WorkTimeResponse value, $Res Function(WorkTimeResponse) then) =
      _$WorkTimeResponseCopyWithImpl<$Res, WorkTimeResponse>;
  @useResult
  $Res call(
      {String id,
      String paridad,
      String posicion,
      String membrana,
      List<WorkTimeItemResponse> workTimeItems});
}

/// @nodoc
class _$WorkTimeResponseCopyWithImpl<$Res, $Val extends WorkTimeResponse>
    implements $WorkTimeResponseCopyWith<$Res> {
  _$WorkTimeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paridad = null,
    Object? posicion = null,
    Object? membrana = null,
    Object? workTimeItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paridad: null == paridad
          ? _value.paridad
          : paridad // ignore: cast_nullable_to_non_nullable
              as String,
      posicion: null == posicion
          ? _value.posicion
          : posicion // ignore: cast_nullable_to_non_nullable
              as String,
      membrana: null == membrana
          ? _value.membrana
          : membrana // ignore: cast_nullable_to_non_nullable
              as String,
      workTimeItems: null == workTimeItems
          ? _value.workTimeItems
          : workTimeItems // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeItemResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkTimeResponseImplCopyWith<$Res>
    implements $WorkTimeResponseCopyWith<$Res> {
  factory _$$WorkTimeResponseImplCopyWith(_$WorkTimeResponseImpl value,
          $Res Function(_$WorkTimeResponseImpl) then) =
      __$$WorkTimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String paridad,
      String posicion,
      String membrana,
      List<WorkTimeItemResponse> workTimeItems});
}

/// @nodoc
class __$$WorkTimeResponseImplCopyWithImpl<$Res>
    extends _$WorkTimeResponseCopyWithImpl<$Res, _$WorkTimeResponseImpl>
    implements _$$WorkTimeResponseImplCopyWith<$Res> {
  __$$WorkTimeResponseImplCopyWithImpl(_$WorkTimeResponseImpl _value,
      $Res Function(_$WorkTimeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paridad = null,
    Object? posicion = null,
    Object? membrana = null,
    Object? workTimeItems = null,
  }) {
    return _then(_$WorkTimeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paridad: null == paridad
          ? _value.paridad
          : paridad // ignore: cast_nullable_to_non_nullable
              as String,
      posicion: null == posicion
          ? _value.posicion
          : posicion // ignore: cast_nullable_to_non_nullable
              as String,
      membrana: null == membrana
          ? _value.membrana
          : membrana // ignore: cast_nullable_to_non_nullable
              as String,
      workTimeItems: null == workTimeItems
          ? _value._workTimeItems
          : workTimeItems // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkTimeResponseImpl implements _WorkTimeResponse {
  const _$WorkTimeResponseImpl(
      {required this.id,
      required this.paridad,
      required this.posicion,
      required this.membrana,
      required final List<WorkTimeItemResponse> workTimeItems})
      : _workTimeItems = workTimeItems;

  factory _$WorkTimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkTimeResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String paridad;
  @override
  final String posicion;
  @override
  final String membrana;
  final List<WorkTimeItemResponse> _workTimeItems;
  @override
  List<WorkTimeItemResponse> get workTimeItems {
    if (_workTimeItems is EqualUnmodifiableListView) return _workTimeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workTimeItems);
  }

  @override
  String toString() {
    return 'WorkTimeResponse(id: $id, paridad: $paridad, posicion: $posicion, membrana: $membrana, workTimeItems: $workTimeItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkTimeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paridad, paridad) || other.paridad == paridad) &&
            (identical(other.posicion, posicion) ||
                other.posicion == posicion) &&
            (identical(other.membrana, membrana) ||
                other.membrana == membrana) &&
            const DeepCollectionEquality()
                .equals(other._workTimeItems, _workTimeItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, paridad, posicion, membrana,
      const DeepCollectionEquality().hash(_workTimeItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkTimeResponseImplCopyWith<_$WorkTimeResponseImpl> get copyWith =>
      __$$WorkTimeResponseImplCopyWithImpl<_$WorkTimeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkTimeResponseImplToJson(
      this,
    );
  }
}

abstract class _WorkTimeResponse implements WorkTimeResponse {
  const factory _WorkTimeResponse(
          {required final String id,
          required final String paridad,
          required final String posicion,
          required final String membrana,
          required final List<WorkTimeItemResponse> workTimeItems}) =
      _$WorkTimeResponseImpl;

  factory _WorkTimeResponse.fromJson(Map<String, dynamic> json) =
      _$WorkTimeResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get paridad;
  @override
  String get posicion;
  @override
  String get membrana;
  @override
  List<WorkTimeItemResponse> get workTimeItems;
  @override
  @JsonKey(ignore: true)
  _$$WorkTimeResponseImplCopyWith<_$WorkTimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
