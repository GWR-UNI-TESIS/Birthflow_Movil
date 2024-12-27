// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographListResponseImpl _$$PartographListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographListResponseImpl(
      partographId: json['partographId'] as String,
      name: json['name'] as String,
      recordName: json['recordName'] as String,
      date: DateTime.parse(json['date'] as String),
      observation: json['observation'] as String,
      workTime: json['workTime'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      updateBy: json['updateBy'] as String?,
      stateId: (json['stateId'] as num).toInt(),
      userId: json['userId'] as String,
      isAchived: json['isAchived'] as bool,
      set: json['set'] as bool,
      silenced: json['silenced'] as bool,
      favorite: json['favorite'] as bool,
      accessType: (json['accessType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PartographListResponseImplToJson(
        _$PartographListResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'name': instance.name,
      'recordName': instance.recordName,
      'date': instance.date.toIso8601String(),
      'observation': instance.observation,
      'workTime': instance.workTime,
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'updateAt': instance.updateAt?.toIso8601String(),
      'updateBy': instance.updateBy,
      'stateId': instance.stateId,
      'userId': instance.userId,
      'isAchived': instance.isAchived,
      'set': instance.set,
      'silenced': instance.silenced,
      'favorite': instance.favorite,
      'accessType': instance.accessType,
    };
