
import 'package:birthflow_movil/src/domain/catalog/entities/activity.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/filter.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hour_filter.dart';

class FilterModel {
  final Filter filter;
  final Activity actividad;
  final HourFilter hora;

  FilterModel({
    required this.filter,
    required this.actividad,
    required this.hora,
  });

  @override
  String toString() {
    return 'FilterModel(filter: $filter, actividad: $actividad, hora: $hora)';
  }
}
