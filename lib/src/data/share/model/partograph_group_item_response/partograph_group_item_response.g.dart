// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupItemResponseImpl _$$PartographGroupItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupItemResponseImpl(
      partographId: json['partographId'] as String,
      partographGroupId: (json['partographGroupId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PartographGroupItemResponseImplToJson(
        _$PartographGroupItemResponseImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'partographGroupId': instance.partographGroupId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
