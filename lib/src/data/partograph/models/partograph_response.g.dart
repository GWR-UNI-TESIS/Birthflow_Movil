// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographResponseImpl _$$PartographResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographResponseImpl(
      partogramaId: json['partogramaId'] as String?,
      creadoPor: json['creadoPor'] as String?,
      nombre: json['nombre'] as String?,
      expediente: json['expediente'] as String?,
      fecha: json['fecha'] as String?,
      observacion: json['observacion'] as String?,
      fechaCreacion: json['fechaCreacion'] as String?,
      fechaModificacion: json['fechaModificacion'] as String?,
      eliminado: json['eliminado'] as bool?,
    );

Map<String, dynamic> _$$PartographResponseImplToJson(
        _$PartographResponseImpl instance) =>
    <String, dynamic>{
      'partogramaId': instance.partogramaId,
      'creadoPor': instance.creadoPor,
      'nombre': instance.nombre,
      'expediente': instance.expediente,
      'fecha': instance.fecha,
      'observacion': instance.observacion,
      'fechaCreacion': instance.fechaCreacion,
      'fechaModificacion': instance.fechaModificacion,
      'eliminado': instance.eliminado,
    };
