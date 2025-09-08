import 'package:birthflow_movil/src/domain/worktime/worktime.dart';

//Objeto que almacena los valores por defecto para la creacion de la curva de alerta
class CurveDefaultData {
  final Duration time;
  final double cervicalDilation;

  CurveDefaultData({
    required this.time,
    required this.cervicalDilation,
  });
}

//Clase que guarda los valores por defecto para la creacion de la curva de alerta
// ignore: avoid_classes_with_only_static_members
class DefaultBuildValues {
  static final Map<String, List<CurveDefaultData>> curveDataMap = {
    'VTI': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 10),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 15),
        cervicalDilation: 7,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1),
        cervicalDilation: 8,
      ),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 15), cervicalDilation: 11),
    ],
    'HMI': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 25),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(minutes: 55), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 40), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 15), cervicalDilation: 11),
    ],
    'HMR': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 5),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 25), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 10), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 5), cervicalDilation: 11),
    ],
    'HNI': [
      CurveDefaultData(
        time: const Duration(hours: 3, minutes: 15),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 30),
        cervicalDilation: 7,
      ),
      CurveDefaultData(time: const Duration(hours: 1), cervicalDilation: 8),
      CurveDefaultData(time: const Duration(minutes: 40), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 30), cervicalDilation: 11),
    ],
    'HNR': [
      CurveDefaultData(
        time: const Duration(hours: 2, minutes: 30),
        cervicalDilation: 6,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 15),
        cervicalDilation: 7,
      ),
      CurveDefaultData(
        time: const Duration(hours: 1, minutes: 5),
        cervicalDilation: 8,
      ),
      CurveDefaultData(time: const Duration(minutes: 50), cervicalDilation: 9),
      CurveDefaultData(time: const Duration(minutes: 35), cervicalDilation: 10),
      CurveDefaultData(time: const Duration(minutes: 20), cervicalDilation: 11),
    ],
  };

  static List<CurveDefaultData> curveAlert(WorkTime workTime) {
    return curveDataMap[workTime.estado] ?? [];
  }

  static List<CurveDefaultData> newCurveAlert(WorkTime workTime) {
    return curveDataMap[workTime.estado] ?? [];
  }
}
