import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';

//Clase que funciona para guardar los graficos que seran utilizados en el partograma
class ChartData {
  //Curva real
  List<ChartPoint> _realCurve;
  //Curva de alerta
  List<ChartPoint> _alertCurve;
  //Nueva curva de alerta
  List<ChartPoint> _newAlertCurve;
  //Otros (Puntos de frecuencia cardiaca fetal, duraccion de contraccione y plano de hodge)
  List<ChartPoint> _others;

  //Constructor
  ChartData(
    this._realCurve,
    this._alertCurve,
    this._newAlertCurve,
    this._others,
  );

  //Getters
  List<ChartPoint> get realCurve => _realCurve;

  List<ChartPoint> get alertCurve => _alertCurve;

  List<ChartPoint> get newAlertCurve => _newAlertCurve;

  List<ChartPoint> get others => _others;

  //Setter
  set realCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _realCurve = newData;
    }
  }

  set alertCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _alertCurve = newData;
    }
  }

  set newAlertCurve(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _newAlertCurve = newData;
    }
  }

  set others(List<ChartPoint> newData) {
    if (newData.isNotEmpty) {
      _others = newData;
    }
  }
}
