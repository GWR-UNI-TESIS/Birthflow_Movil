/// Representa un punto en la curva de alerta del partograma.
/// 
/// Cada punto contiene la dilatación cervical y el momento en que fue registrada.
class AlertCurve {
  /// Dilatación cervical en centímetros.
  final double cervicalDilation;

  /// Hora y fecha en que se registró la dilatación.
  final DateTime time;

  /// Constructor de la clase [AlertCurve].
  AlertCurve({
    required this.cervicalDilation,
    required this.time,
  });
}

/// Contiene las curvas de alerta relacionadas con el partograma.
/// 
/// Incluye la curva de alerta tradicional ([alertCurve]) y una posible 
/// nueva curva de referencia ([newAlertCurve]).
class AlertCurves {
  /// Lista de puntos que forman la curva de alerta clásica.
  /// 
  /// Puede ser `null` si no se ha registrado información.
  final List<AlertCurve>? alertCurve;

  /// Lista de puntos que forman la nueva curva de referencia.
  /// 
  /// Puede ser `null` si no se ha definido o aún no se utiliza.
  final List<AlertCurve>? newAlertCurve;

  /// Constructor de la clase [AlertCurves].
  AlertCurves({
    this.alertCurve,
    this.newAlertCurve,
  });
}
