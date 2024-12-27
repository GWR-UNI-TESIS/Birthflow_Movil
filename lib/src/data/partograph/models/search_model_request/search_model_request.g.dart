// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelRequestImpl _$$SearchModelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchModelRequestImpl(
      name: json['name'] as String,
      filterId: (json['filterId'] as num).toInt(),
      activityId: (json['activityId'] as num).toInt(),
      hourFilterId: (json['hourFilterId'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchModelRequestImplToJson(
        _$SearchModelRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'filterId': instance.filterId,
      'activityId': instance.activityId,
      'hourFilterId': instance.hourFilterId,
    };
