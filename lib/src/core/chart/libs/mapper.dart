
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/core/chart/models/curve_data.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';

//Clase que ayuda a mappear los datos crudos a objetos para la creacion de puntos graficos
// ignore: avoid_classes_with_only_static_members
class ChartMapper {
  static CurveData transformToCurveData(CervicalDilation cervicalDilation) {
    final DateTime now = DateTime.now();
    return CurveData(
      time: DateTime(
        now.year,
        now.month,
        now.day,
        cervicalDilation.hour.hour,
        cervicalDilation.hour.minute,
      ),
      cervicalDilation: cervicalDilation.value,
    );
  }

  static List<CurveData> transformToCurveDataList(
    List<CervicalDilation> cervicalDilationList,
  ) {
    return cervicalDilationList.map((e) => transformToCurveData(e)).toList();
  }

  static List<ChartPoint> transformToChartPoint({
    required List<AlertCurve> data,
    required DateTime firstDate,
  }) {
    if (data.isEmpty) {
      return [];
    } else {

      final result = data.map((model) {
        final Duration diferencia = model.time.difference(firstDate);
        final double diferences = diferencia.inSeconds / 3600.0;
        return ChartPoint(
          x: diferences,
          y: model.cervicalDilation,
          radius: 1,
          strokeWidth: 1,
        );
      }).toList();
      return result;
    }
  }
}
