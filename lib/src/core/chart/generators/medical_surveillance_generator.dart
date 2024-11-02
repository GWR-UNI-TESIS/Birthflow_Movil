import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MedicalSurveillanceGenerator implements IGenerator {
  MedicalSurveillanceGenerator({
    required List<MedicalSurveillanceTable> medicalSurveillanceList,
    required double firstPoint,
  }) {
    _generate(medicalSurveillanceList, firstPoint);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate(
    List<MedicalSurveillanceTable> medicalSurveillanceList,
    double firstPoint,
  ) {
    List<ChartPoint> fetalHeartRateList;

    List<ChartPoint>? frequencyContractionsList;

    fetalHeartRateList = [];
    for (var index = 0; index < medicalSurveillanceList.length; index++) {
      final fetalHeartRateValue =
          medicalSurveillanceList[index].fetalHeartRate.split('x');
      final frequencyContractionsValue =
          medicalSurveillanceList[index].frequencyContractions;

      final double? fetalHeartRate = double.tryParse(fetalHeartRateValue[0]);
      final double? frequencyContractions =
          double.tryParse(frequencyContractionsValue);

      final timeDecimalValue =
          Helper.transformToDecimal(medicalSurveillanceList[index].time);

      final timeResult = timeDecimalValue - firstPoint;

      final fetalHeartRateChartPoint = ChartPoint(
        x: timeResult,
        y: Helper.mapValue(fetalHeartRate!),
        radius: 5,
        strokeWidth: 2,
        fillColor: charts.MaterialPalette.transparent,
        shape: 'rect',
      );

      final frequencyContractionsPoint = ChartPoint(
        x: timeResult,
        y: frequencyContractions!,
        radius: 6,
        strokeWidth: 1,
        fillColor: charts.MaterialPalette.blue.shadeDefault,
        shape: 'triangle',
      );

      fetalHeartRateList.add(fetalHeartRateChartPoint);
      frequencyContractionsList!.add(frequencyContractionsPoint);
    }

    _chartPoint = fetalHeartRateList;
    _chartPoint!.addAll(frequencyContractionsList!);
  }
}
