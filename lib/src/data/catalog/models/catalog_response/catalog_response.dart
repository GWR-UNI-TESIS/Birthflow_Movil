import 'package:birthflow_movil/src/data/catalog/models/activity_response/activity_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/filter_response/filter_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/hodge_plane_response/hodge_plane_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/hour_filter_response/hour_filter_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/permission_type_response/permission_type_response.dart';
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
    required List<FilterResponse> filterCatalog,
    required List<ActivityResponse> activityCatalog,
    required List<HourFilterResponse> hourFilterCatalog,
    required List<PermissionTypeResponse> permissionTypeCatalog,
  }) = _CatalogResponse;

  factory CatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogResponseFromJson(json);
}
