// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_state_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographStateRequestImpl _$$PartographStateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographStateRequestImpl(
      partographId: json['partographId'] as String,
      isAchived: json['isAchived'] as bool,
      set: json['set'] as bool,
      silenced: json['silenced'] as bool,
      favorite: json['favorite'] as bool,
    );

Map<String, dynamic> _$$PartographStateRequestImplToJson(
        _$PartographStateRequestImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'isAchived': instance.isAchived,
      'set': instance.set,
      'silenced': instance.silenced,
      'favorite': instance.favorite,
    };
