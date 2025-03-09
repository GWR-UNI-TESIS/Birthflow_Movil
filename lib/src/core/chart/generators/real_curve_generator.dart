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
      // Convertir las fechas y horas a objetos DateTime
      final DateTime previousDateTime = cervicalList[index - 1].hour;
      final DateTime currentDateTime = cervicalList[index].hour;

      // Calcular la diferencia en horas entre los dos DateTime
      final double differenceInHours =
          currentDateTime.difference(previousDateTime).inMinutes / 60.0;

      // Sumar la diferencia al último valor de lastDigit
      final double result = differenceInHours + lastDigit;

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
