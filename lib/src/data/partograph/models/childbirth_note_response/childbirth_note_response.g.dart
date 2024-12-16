// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childbirth_note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildbirthNoteResponseImpl _$$ChildbirthNoteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildbirthNoteResponseImpl(
      partographId: json['partographId'] as String,
      description: json['description'] as String?,
      hour: json['hour'] as String,
      sex: json['sex'] as String,
      apgar: json['apgar'] as String,
      temperature: json['temperature'] as String,
      caputto: json['caputto'] as String,
      circular: json['circular'] as String,
      lamniotico: json['lamniotico'] as String,
      miccion: json['miccion'] as String,
      meconio: json['meconio'] as String,
      pa: json['pa'] as String,
      expulsivo: json['expulsivo'] as String,
      placenta: json['placenta'] as String,
      alumbramiento: json['alumbramiento'] as String,
      huellaPlantar: json['huellaPlantar'] as String,
      pc: json['pc'] as String,
      talla: json['talla'] as String,
      brazalete: json['brazalete'] as String,
      huellaDig: json['huellaDig'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : DateTime.parse(json['deleteAt'] as String),
      createdBy: json['createdBy'] as String?,
      updateBy: json['updateBy'] as String?,
      deleteBy: json['deleteBy'] as String?,
    );

Map<String, dynamic> _$$ChildbirthNoteResponseImplToJson(
        _$ChildbirthNoteResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'description': instance.description,
      'hour': instance.hour,
      'sex': instance.sex,
      'apgar': instance.apgar,
      'temperature': instance.temperature,
      'caputto': instance.caputto,
      'circular': instance.circular,
      'lamniotico': instance.lamniotico,
      'miccion': instance.miccion,
      'meconio': instance.meconio,
      'pa': instance.pa,
      'expulsivo': instance.expulsivo,
      'placenta': instance.placenta,
      'alumbramiento': instance.alumbramiento,
      'huellaPlantar': instance.huellaPlantar,
      'pc': instance.pc,
      'talla': instance.talla,
      'brazalete': instance.brazalete,
      'huellaDig': instance.huellaDig,
      'createAt': instance.createAt.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deleteAt': instance.deleteAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updateBy': instance.updateBy,
      'deleteBy': instance.deleteBy,
    };
