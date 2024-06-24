// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograma_rest_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartogramaRequest _$PartogramaRequestFromJson(Map<String, dynamic> json) {
  return _PartogramaRequest.fromJson(json);
}

/// @nodoc
mixin _$PartogramaRequest {
  String? get PartogramaId => throw _privateConstructorUsedError;
  String? get NombrePaciente => throw _privateConstructorUsedError;
  String? get NExpediente => throw _privateConstructorUsedError;
  String? get Fecha => throw _privateConstructorUsedError;
  String? get Observacion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartogramaRequestCopyWith<PartogramaRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartogramaRequestCopyWith<$Res> {
  factory $PartogramaRequestCopyWith(
          PartogramaRequest value, $Res Function(PartogramaRequest) then) =
      _$PartogramaRequestCopyWithImpl<$Res, PartogramaRequest>;
  @useResult
  $Res call(
      {String? PartogramaId,
      String? NombrePaciente,
      String? NExpediente,
      String? Fecha,
      String? Observacion});
}

/// @nodoc
class _$PartogramaRequestCopyWithImpl<$Res, $Val extends PartogramaRequest>
    implements $PartogramaRequestCopyWith<$Res> {
  _$PartogramaRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PartogramaId = freezed,
    Object? NombrePaciente = freezed,
    Object? NExpediente = freezed,
    Object? Fecha = freezed,
    Object? Observacion = freezed,
  }) {
    return _then(_value.copyWith(
      PartogramaId: freezed == PartogramaId
          ? _value.PartogramaId
          : PartogramaId // ignore: cast_nullable_to_non_nullable
              as String?,
      NombrePaciente: freezed == NombrePaciente
          ? _value.NombrePaciente
          : NombrePaciente // ignore: cast_nullable_to_non_nullable
              as String?,
      NExpediente: freezed == NExpediente
          ? _value.NExpediente
          : NExpediente // ignore: cast_nullable_to_non_nullable
              as String?,
      Fecha: freezed == Fecha
          ? _value.Fecha
          : Fecha // ignore: cast_nullable_to_non_nullable
              as String?,
      Observacion: freezed == Observacion
          ? _value.Observacion
          : Observacion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartogramaRequestImplCopyWith<$Res>
    implements $PartogramaRequestCopyWith<$Res> {
  factory _$$PartogramaRequestImplCopyWith(_$PartogramaRequestImpl value,
          $Res Function(_$PartogramaRequestImpl) then) =
      __$$PartogramaRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? PartogramaId,
      String? NombrePaciente,
      String? NExpediente,
      String? Fecha,
      String? Observacion});
}

/// @nodoc
class __$$PartogramaRequestImplCopyWithImpl<$Res>
    extends _$PartogramaRequestCopyWithImpl<$Res, _$PartogramaRequestImpl>
    implements _$$PartogramaRequestImplCopyWith<$Res> {
  __$$PartogramaRequestImplCopyWithImpl(_$PartogramaRequestImpl _value,
      $Res Function(_$PartogramaRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? PartogramaId = freezed,
    Object? NombrePaciente = freezed,
    Object? NExpediente = freezed,
    Object? Fecha = freezed,
    Object? Observacion = freezed,
  }) {
    return _then(_$PartogramaRequestImpl(
      PartogramaId: freezed == PartogramaId
          ? _value.PartogramaId
          : PartogramaId // ignore: cast_nullable_to_non_nullable
              as String?,
      NombrePaciente: freezed == NombrePaciente
          ? _value.NombrePaciente
          : NombrePaciente // ignore: cast_nullable_to_non_nullable
              as String?,
      NExpediente: freezed == NExpediente
          ? _value.NExpediente
          : NExpediente // ignore: cast_nullable_to_non_nullable
              as String?,
      Fecha: freezed == Fecha
          ? _value.Fecha
          : Fecha // ignore: cast_nullable_to_non_nullable
              as String?,
      Observacion: freezed == Observacion
          ? _value.Observacion
          : Observacion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartogramaRequestImpl implements _PartogramaRequest {
  const _$PartogramaRequestImpl(
      {this.PartogramaId,
      this.NombrePaciente,
      this.NExpediente,
      this.Fecha,
      this.Observacion});

  factory _$PartogramaRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartogramaRequestImplFromJson(json);

  @override
  final String? PartogramaId;
  @override
  final String? NombrePaciente;
  @override
  final String? NExpediente;
  @override
  final String? Fecha;
  @override
  final String? Observacion;

  @override
  String toString() {
    return 'PartogramaRequest(PartogramaId: $PartogramaId, NombrePaciente: $NombrePaciente, NExpediente: $NExpediente, Fecha: $Fecha, Observacion: $Observacion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartogramaRequestImpl &&
            (identical(other.PartogramaId, PartogramaId) ||
                other.PartogramaId == PartogramaId) &&
            (identical(other.NombrePaciente, NombrePaciente) ||
                other.NombrePaciente == NombrePaciente) &&
            (identical(other.NExpediente, NExpediente) ||
                other.NExpediente == NExpediente) &&
            (identical(other.Fecha, Fecha) || other.Fecha == Fecha) &&
            (identical(other.Observacion, Observacion) ||
                other.Observacion == Observacion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, PartogramaId, NombrePaciente,
      NExpediente, Fecha, Observacion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartogramaRequestImplCopyWith<_$PartogramaRequestImpl> get copyWith =>
      __$$PartogramaRequestImplCopyWithImpl<_$PartogramaRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartogramaRequestImplToJson(
      this,
    );
  }
}

abstract class _PartogramaRequest implements PartogramaRequest {
  const factory _PartogramaRequest(
      {final String? PartogramaId,
      final String? NombrePaciente,
      final String? NExpediente,
      final String? Fecha,
      final String? Observacion}) = _$PartogramaRequestImpl;

  factory _PartogramaRequest.fromJson(Map<String, dynamic> json) =
      _$PartogramaRequestImpl.fromJson;

  @override
  String? get PartogramaId;
  @override
  String? get NombrePaciente;
  @override
  String? get NExpediente;
  @override
  String? get Fecha;
  @override
  String? get Observacion;
  @override
  @JsonKey(ignore: true)
  _$$PartogramaRequestImplCopyWith<_$PartogramaRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
