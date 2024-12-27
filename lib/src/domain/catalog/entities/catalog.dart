import 'package:birthflow_movil/src/domain/catalog/entities/activity.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/filter.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hour_filter.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/permission_type.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time_item.dart';

class Catalog {
  final List<HodgePlane> hodgePlanesCatalog;
  final List<Position> positionCatalog;
  final List<WorkTimeItem> workTimeItemsCatalog;
  final List<WorkTime> workTimeCatalog;
  final List<Filter> filterCatalog;
  final List<Activity> activityCatalog;
  final List<HourFilter> hourFilterCatalog;
  final List<PermissionType> permissionTypeCatalog;
  
  Catalog({
    required this.hodgePlanesCatalog,
    required this.positionCatalog,
    required this.workTimeItemsCatalog,
    required this.workTimeCatalog,
    required this.filterCatalog,
    required this.activityCatalog,
    required this.hourFilterCatalog,
    required this.permissionTypeCatalog,
  });
}
