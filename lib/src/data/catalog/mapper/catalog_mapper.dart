import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.auto_mappr.dart';
import 'package:birthflow_movil/src/data/catalog/models/catalog_response/catalog_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/hodge_plane_response/hodge_plane_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/position_response/position_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/work_time_item_response/work_time_item_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/work_time_response/work_time_response.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time_item.dart';

@AutoMappr([
  MapType<CatalogResponse, Catalog>(),
  MapType<PositionResponse, Position>(),
  MapType<HodgePlaneResponse, HodgePlane>(),
  MapType<WorkTimeResponse, WorkTime>(),
  MapType<WorkTimeItemResponse, WorkTimeItem>(),
])
class CatalogMapper extends $CatalogMapper {}
