import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';

// Clase abstracta IGenerator - Define la interfaz o contrato para generadores
abstract class IGenerator {
  List<ChartPoint>? get chartPoint;
}
