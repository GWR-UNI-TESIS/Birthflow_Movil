/// Representa un registro de la frecuencia cardíaca fetal en el partograma.
/// 
/// Contiene el valor medido y la hora en que se registró.
class FetalHeartRate {
  /// Identificador único del registro de frecuencia cardíaca fetal.
  /// 
  /// Puede ser `null` si aún no se ha almacenado en la base de datos.
  final int? id;

  /// Identificador del partograma al que pertenece este registro.
  final String partographId;

  /// Valor de la frecuencia cardíaca fetal.
  /// 
  /// Se recomienda expresarlo en latidos por minuto (lpm).
  /// Actualmente está definido como `String`, pero podría representarse
  /// como `int` para mayor robustez.
  final String value;

  /// Fecha y hora en que se registró la frecuencia cardíaca fetal.
  final DateTime time;

  /// Constructor de la clase [FetalHeartRate].
  FetalHeartRate({
    this.id,
    required this.partographId,
    required this.value,
    required this.time,
  });
}
