import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';

/// Representa un registro de dilatación cervical dentro de un partograma.
/// 
/// Incluye la información del valor medido, la hora en que se registró, 
/// y si ocurrió una ruptura de membranas (REM o RAM).
class CervicalDilation {
  /// Identificador único del registro de dilatación.
  final int id;

  /// Identificador del partograma al que pertenece este registro.
  final String partographId;

  /// Valor de la dilatación cervical en centímetros.
  final double value;

  /// Hora y fecha en que se registró la dilatación.
  final DateTime hour;

  /// Indica si hubo ruptura de membranas (REM o RAM).
  /// 
  /// `true` si se presentó, `false` en caso contrario.
  final bool remOrRam;

  /// Curvas de alerta asociadas a este registro de dilatación cervical.
  /// 
  /// Puede ser `null` si no se generaron curvas en este punto.
  AlertCurves? alertCurves;

  /// Constructor de la clase [CervicalDilation].
  CervicalDilation({
    required this.id,
    required this.partographId,
    required this.value,
    required this.hour,
    required this.remOrRam,
    this.alertCurves,
  });
}
