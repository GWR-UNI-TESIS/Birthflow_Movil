import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HodgePlaneGenerator implements IGenerator {
  final List<PresentationPositionVariety> hodgePlaneList;
  final DateTime startTime;
  final Catalog catalog;

  HodgePlaneGenerator({
    required this.hodgePlaneList,
    required this.startTime,
    required this.catalog,
  }) {
    _generate();
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate() {
    List<ChartPoint> points;
    points = [];
    for (var index = 0; index < hodgePlaneList.length; index++) {
      // Obtén el DateTime actual del dato
      final currentTime = hodgePlaneList[index].time;

      // Calcula la diferencia total en minutos
      final timeDifference = currentTime.difference(startTime).inMinutes;

      // Convierte la diferencia total en formato decimal (horas decimales)
      final timeResult = timeDifference / 60;

      final double y = catalog.hodgePlanesCatalog
          .firstWhere((e) => e.id == hodgePlaneList[index].hodgePlane)
          .chartPosition;
      final String position = catalog.positionCatalog
          .firstWhere((e) => e.id == hodgePlaneList[index].position)
          .code;
      final currentPoint = ChartPoint(
        x: timeResult,
        y: y,
        radius: 10,
        strokeWidth: 2,
        fillColor: charts.Color.transparent,
        shape: position,
      );

      points.add(currentPoint);
    }
    _chartPoint = points;
  }
}
