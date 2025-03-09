// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographRequestImpl _$$PartographRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographRequestImpl(
      partographId: json['partographId'] as String?,
      name: json['name'] as String,
      recordName: json['recordName'] as String,
      date: DateTime.parse(json['date'] as String),
      observation: json['observation'] as String,
      workTime: json['workTime'] as String,
    );

Map<String, dynamic> _$$PartographRequestImplToJson(
        _$PartographRequestImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'name': instance.name,
      'recordName': instance.recordName,
      'date': instance.date.toIso8601String(),
      'observation': instance.observation,
      'workTime': instance.workTime,
    };
