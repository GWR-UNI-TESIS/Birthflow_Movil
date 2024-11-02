// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogResponseImpl _$$CatalogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogResponseImpl(
      hodgePlanesCatalog: (json['hodgePlanesCatalog'] as List<dynamic>)
          .map((e) => HodgePlaneResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      positionCatalog: (json['positionCatalog'] as List<dynamic>)
          .map((e) => PositionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      workTimeItemsCatalog: (json['workTimeItemsCatalog'] as List<dynamic>)
          .map((e) => WorkTimeItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      workTimeCatalog: (json['workTimeCatalog'] as List<dynamic>)
          .map((e) => WorkTimeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CatalogResponseImplToJson(
        _$CatalogResponseImpl instance) =>
    <String, dynamic>{
      'hodgePlanesCatalog':
          instance.hodgePlanesCatalog.map((e) => e.toJson()).toList(),
      'positionCatalog':
          instance.positionCatalog.map((e) => e.toJson()).toList(),
      'workTimeItemsCatalog':
          instance.workTimeItemsCatalog.map((e) => e.toJson()).toList(),
      'workTimeCatalog':
          instance.workTimeCatalog.map((e) => e.toJson()).toList(),
    };
