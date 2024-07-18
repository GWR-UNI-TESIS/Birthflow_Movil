import 'package:birthflow_movil/src/domain/worktime/entities/membranas.dart';
import 'package:birthflow_movil/src/domain/worktime/entities/paridad.dart';
import 'package:birthflow_movil/src/domain/worktime/entities/posicion.dart';

class WorkTime {

  WorkTime({
    required this.partographId,
    required this.posicion,
    required this.paridad,
    required this.membranas,
  });

  WorkTime.init(){
    partographId = 0;
    membranas = const Membranas.init();
    paridad = const Paridad.init();
    posicion = const Posicion.init();
  }

  late int partographId;
  late Posicion posicion;
  late Paridad paridad;
  late Membranas membranas;

  bool get vti =>
      posicion.isVertical && paridad.isTodas && membranas.isIntegras;
  bool get hmi =>
      posicion.isHorizontal && paridad.isMultiparas && membranas.isIntegras;
  bool get hmr =>
      posicion.isHorizontal && paridad.isMultiparas && membranas.isRotas;
  bool get hni =>
      posicion.isHorizontal && paridad.isNuliparas && membranas.isIntegras;
  bool get hnr =>
      posicion.isHorizontal && paridad.isNuliparas && membranas.isRotas;

  String get estado {
    if (vti) return 'VTI';
    if (hmi) return 'HMI';
    if (hmr) return 'HMR';
    if (hni) return 'HNI';
    if (hnr) return 'HNR';
    return 'unknown state'; // Opcional: para manejar casos donde no se cumpla ningún estado
  }
}
