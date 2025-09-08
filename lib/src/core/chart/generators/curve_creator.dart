// Archivo: curve_creator.dart — Utilidades para construir/componer series de curvas en el partograma.
// Comentarios mínimos y de valor; no se altera el código.

import 'package:birthflow_movil/src/core/chart/libs/curve_default.dart';
import 'package:birthflow_movil/src/core/chart/models/curve_data.dart';

// Clase CurveCreator: responsabilidad principal del módulo.
class CurveCreator {
  final List<CurveDefaultData> curveCreationDefault;

  /* El primer punto de la curva real */

  final CurveData firstPoint;

  CurveCreator(this.firstPoint, this.curveCreationDefault);

  List<CurveData> alertCurve() {
    //Variable donde almacenara la lista generada
    final List<CurveData> generateList = [];


    generateList.add(firstPoint);

    for (int index = 0; index <= curveCreationDefault.length - 1; index++) {
      if (curveCreationDefault[index].cervicalDilation >
          firstPoint.cervicalDilation) {
        /* Añade el punto a la nueva lista utilizando la lista de valores predeterminados */
        final CurveData generatePoint = CurveData(
          time: generateList.last.time.add(curveCreationDefault[index].time),
          cervicalDilation: curveCreationDefault[index].cervicalDilation,
        );

        generateList.add(generatePoint);
      }
    }
    return generateList;
  }

  List<CurveData> newAlertCurve({
    required double fork,
    required List<CurveDefaultData> breakList,
  }) {
    //Varibale donde almacenara la lista generada
    final List<CurveData> generateList = [];

    generateList.add(firstPoint);

    for (int index = 0; index <= curveCreationDefault.length - 1; index++) {
      if (curveCreationDefault[index].cervicalDilation >
          firstPoint.cervicalDilation) {
        //Si el valor de y del punto actual es mayor al punto donde el ramorem es activo se cambia la lista donde estan los puntos rotos
        if (curveCreationDefault[index].cervicalDilation > fork) {

          final CurveData generatePoint = CurveData(
            time: generateList.last.time.add(breakList[index].time),
            cervicalDilation: breakList[index].cervicalDilation,
          );

          /*final CurveData generatePoint = CurveData(
              generateList.last.x + breakList[index].cervicalDilation, breakList[index].y);
         */
          generateList.add(generatePoint);
        } else {

          final CurveData generatePoint = CurveData(
            time: generateList.last.time.add(curveCreationDefault[index].time),
            cervicalDilation: curveCreationDefault[index].cervicalDilation,
          );

          generateList.add(generatePoint);
        }
      }
    }
    return generateList;
  }
}
