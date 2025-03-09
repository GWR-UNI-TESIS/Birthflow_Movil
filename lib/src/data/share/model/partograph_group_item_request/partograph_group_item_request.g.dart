// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partograph_group_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartographGroupItemRequestImpl _$$PartographGroupItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PartographGroupItemRequestImpl(
      partographId: json['partographId'] as String,
      partographGroupId: (json['partographGroupId'] as num).toInt(),
    );

Map<String, dynamic> _$$PartographGroupItemRequestImplToJson(
        _$PartographGroupItemRequestImpl instance) =>
    <String, dynamic>{
      'partographId': instance.partographId,
      'partographGroupId': instance.partographGroupId,
    };
