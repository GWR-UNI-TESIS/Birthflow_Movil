import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/work_time_item.dart';


class Catalog {
  final List<HodgePlane> hodgePlanesCatalog;
  final List<Position> positionCatalog;
  final List<WorkTimeItem> workTimeItemsCatalog;
  final List<WorkTime> workTimeCatalog;

  Catalog({
    required this.hodgePlanesCatalog,
    required this.positionCatalog,
    required this.workTimeItemsCatalog,
    required this.workTimeCatalog,
  });
}
