import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//Clase que genera los puntos de grafica sobre la frecuencia cardiaca fetal
class FetalHeartRateGenerator implements IGenerator {
  FetalHeartRateGenerator({
    required List<FetalHeartRate> fetalHeartRateList,
    required DateTime startTime,
  }) {
    _generate(fetalHeartRateList, startTime);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate(
    List<FetalHeartRate> fetalHeartRateList,
    DateTime startTime,
  ) {
    List<ChartPoint> currentFetalHeartRateList;

    currentFetalHeartRateList = [];

    for (var index = 0; index < fetalHeartRateList.length; index++) {
      final fetalHeartRateValue = fetalHeartRateList[index].value.split('x');

      final double? fetalHeartRate = double.tryParse(fetalHeartRateValue[0]);

      // Obtén el DateTime actual del dato
    final currentTime = fetalHeartRateList[index].time;

    // Calcula la diferencia total en minutos
    final timeDifference = currentTime.difference(startTime).inMinutes;

    // Convierte la diferencia total en formato decimal (horas decimales)
    final timeResult = timeDifference / 60;

      final fetalHeartRateChartPoint = ChartPoint(
        x: timeResult,
        y: Helper.mapValue(fetalHeartRate!),
        radius: 5,
        strokeWidth: 2,
        fillColor: charts.MaterialPalette.transparent,
        shape: 'rect',
      );

      currentFetalHeartRateList.add(fetalHeartRateChartPoint);
    }
    _chartPoint = currentFetalHeartRateList;
  }
}
