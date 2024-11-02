import 'package:birthflow_movil/src/data/catalog/models/hodge_plane_response/hodge_plane_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/position_response/position_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/work_time_item_response/work_time_item_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/work_time_response/work_time_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@freezed
class CatalogResponse with _$CatalogResponse {
  const factory CatalogResponse({
    required List<HodgePlaneResponse> hodgePlanesCatalog,
    required List<PositionResponse> positionCatalog,
    required List<WorkTimeItemResponse> workTimeItemsCatalog,
    required List<WorkTimeResponse> workTimeCatalog,
  }) = _CatalogResponse;

  factory CatalogResponse.fromJson(Map<String, dynamic> json) => _$CatalogResponseFromJson(json);
}
