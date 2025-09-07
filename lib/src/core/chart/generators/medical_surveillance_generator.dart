import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//Clase que genera los puntos de grafica sobre la tabla de vigilancia medica
class MedicalSurveillanceGenerator implements IGenerator {
  MedicalSurveillanceGenerator({
    required List<MedicalSurveillanceTable> medicalSurveillanceList,
    required DateTime startTime,
  }) {
    _generate(medicalSurveillanceList, startTime);
  }
  //Puntos de grafica
  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate(
    List<MedicalSurveillanceTable> medicalSurveillanceList,
    DateTime startTime,
  ) {
    List<ChartPoint> fetalHeartRateList;

    List<ChartPoint>? frequencyContractionsList;

    fetalHeartRateList = [];
    frequencyContractionsList = [];
    for (var index = 0; index < medicalSurveillanceList.length; index++) {
      final fetalHeartRateValue =
          medicalSurveillanceList[index].fetalHeartRate.split('x');
      final frequencyContractionsValue =
          medicalSurveillanceList[index].frequencyContractions;

      final double? fetalHeartRate = double.tryParse(fetalHeartRateValue[0]);
      final double? frequencyContractions =
          double.tryParse(frequencyContractionsValue);

      final currentTime = medicalSurveillanceList[index].time;

      // Calcula la diferencia total en minutos
      final timeDifference = currentTime.difference(startTime).inMinutes;

      // Convierte la diferencia total en formato decimal (horas decimales)
      final timeResult = timeDifference / 60;


      //Guarda un punto de grafico de la frecuencia cardiaca fetal
      final fetalHeartRateChartPoint = ChartPoint(
        x: timeResult,
        y: Helper.mapValue(fetalHeartRate!),
        radius: 5,
        strokeWidth: 2,
        fillColor: charts.MaterialPalette.transparent,
        shape: 'rect',
      );

      //Guarda un punto de grafico de frecuencia de contracciones
      final frequencyContractionsPoint = ChartPoint(
        x: timeResult,
        y: frequencyContractions!,
        radius: 6,
        strokeWidth: 1,
        fillColor: charts.MaterialPalette.blue.shadeDefault,
        shape: 'triangle',
      );
      //Los agrega a sus respectivas lista
      fetalHeartRateList.add(fetalHeartRateChartPoint);
      frequencyContractionsList.add(frequencyContractionsPoint);
    }

    _chartPoint = fetalHeartRateList;
    _chartPoint!.addAll(frequencyContractionsList);
  }
}
