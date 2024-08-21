import 'package:birthflow_movil/src/core/chart/generators/i_generator.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';

class RealCurveGenerator implements IGenerator {
  RealCurveGenerator({required List<CervicalDilation> cervicalList}) {
    _generate(cervicalList);
  }

  List<ChartPoint>? _chartPoint;

  @override
  List<ChartPoint>? get chartPoint => _chartPoint;

  void _generate(List<CervicalDilation> cervicalList) {
    final List<ChartPoint> generatedPoint = [];

    //Variable que almacena la suma del tiempo en decimal de la entidad Cervical dilation
    double lastDigit = 0;

    generatedPoint.add(
      ChartPoint(
        x: lastDigit,
        y: cervicalList[0].value,
        radius: 1,
        shape: '',
        strokeWidth: 1,
      ),
    );

    for (int index = 1; index <= cervicalList.length - 1; index++) {
      final double previousItemhour = cervicalList[index - 1].hour.hour +
          cervicalList[index - 1].hour.minute / 60;

      final double currentItemhour =
          cervicalList[index].hour.hour + cervicalList[index].hour.minute / 60;

      final double result = (currentItemhour - previousItemhour) + lastDigit;

      /*Se agrega el elemento a la lista */
      generatedPoint.add(
        ChartPoint(
          x: result,
          y: cervicalList[index].value,
          radius: 1,
          shape: '',
          strokeWidth: 1,
        ),
      );
      lastDigit = result;
    }

    _chartPoint = generatedPoint;
  }
}
