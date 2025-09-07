import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//Clase que genera los puntos de grafica sobre la frecuencia de contracciones
class ContractionFrequencyGenerator implements IGenerator {
  ContractionFrequencyGenerator({
    required List<ContractionFrequency> contractionFrequencyList,
    required DateTime startTime,
  }) {
    _generate(contractionFrequencyList, startTime);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  // Método clave: transforma datos crudos en puntos/series para el gráfico.
  void _generate(
    List<ContractionFrequency> contractionFrequencyList,
    DateTime startTime,
  ) {
    List<ChartPoint> currentContractionFrequencyList;

    currentContractionFrequencyList = [];

    for (var index = 0; index < contractionFrequencyList.length; index++) {
      final double? contractionFrequency =
          double.tryParse(contractionFrequencyList[index].value);

      final currentTime = contractionFrequencyList[index].time;

      // Calcula la diferencia total en minutos
      // Calcula delta temporal contra la referencia (eje X)
      final timeDifference = currentTime.difference(startTime).inMinutes;

      // Convierte la diferencia total en formato decimal (horas decimales)
      final timeResult = timeDifference / 60;

      final contractionFrequencyChartPoint = ChartPoint(
        x: timeResult,
        y: contractionFrequency!,
        radius: 6,
        strokeWidth: 1,
        fillColor: charts.MaterialPalette.blue.shadeDefault,
        shape: 'triangle',
      );

      currentContractionFrequencyList.add(contractionFrequencyChartPoint);
    }
    _chartPoint = currentContractionFrequencyList;
  }
}
