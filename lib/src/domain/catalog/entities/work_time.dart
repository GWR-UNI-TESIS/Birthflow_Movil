import 'package:birthflow_movil/src/domain/catalog/entities/work_time_item.dart';

class WorkTime {
  final String id;
  final String paridad;
  final String posicion;
  final String membrana;
  final List<WorkTimeItem> workTimeItems;

  WorkTime({
    required this.id,
    required this.paridad,
    required this.posicion,
    required this.membrana,
    required this.workTimeItems,
  });
}
