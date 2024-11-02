
import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HodgePlaneGenerator implements IGenerator {
  final List<PresentationPositionVariety> hodgePlaneList;
  final double firstPoint;

  HodgePlaneGenerator({
    required this.hodgePlaneList,
    required this.firstPoint,
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
      final timeDecimalValue =
          Helper.transformToDecimal(hodgePlaneList[index].time);

      final timeResult = timeDecimalValue - firstPoint;

      final double y =  positionCatalog[hodgePlaneList[index].position]!;
      final currentPoint = ChartPoint(
        x: timeResult,
        y: y,
        radius: 10,
        strokeWidth: 2,
        fillColor: charts.Color.transparent,
        shape: hodgePlanePositionCatalog[hodgePlaneList[index].hodgePlane],
      );

      points.add(currentPoint);
    }
    _chartPoint = points;
  }
}
