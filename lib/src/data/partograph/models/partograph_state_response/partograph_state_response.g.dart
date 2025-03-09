// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographStateResponseImpl _$$PartographStateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographStateResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      partographId: json['partographId'] as String,
      isAchived: json['isAchived'] as bool,
      set: json['set'] as bool,
      silenced: json['silenced'] as bool,
      favorite: json['favorite'] as bool,
      lastViewDate: json['lastViewDate'] == null
          ? null
          : DateTime.parse(json['lastViewDate'] as String),
    );

Map<String, dynamic> _$$PartographStateResponseImplToJson(
        _$PartographStateResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partographId': instance.partographId,
      'isAchived': instance.isAchived,
      'set': instance.set,
      'silenced': instance.silenced,
      'favorite': instance.favorite,
      'lastViewDate': instance.lastViewDate?.toIso8601String(),
    };
