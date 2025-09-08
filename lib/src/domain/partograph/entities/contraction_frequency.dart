/// Representa la frecuencia de contracciones registrada en un partograma.
/// 
/// Cada registro contiene la cantidad de contracciones en un periodo de tiempo
/// y la hora en que fue medida.
class ContractionFrequency {
  /// Identificador único del registro de frecuencia de contracciones.
  /// 
  /// Puede ser `null` si aún no se ha almacenado en la base de datos.
  final int? id;

  /// Identificador del partograma al que pertenece este registro.
  final String partographId;

  /// Valor de la frecuencia de contracciones.
  /// 
  /// Generalmente expresado como cantidad de contracciones en un periodo 
  /// determinado (ejemplo: "3 en 10 min").
  final String value;

  /// Hora y fecha en que se registró la frecuencia.
  final DateTime time;

  /// Constructor de la clase [ContractionFrequency].
  ContractionFrequency({
    this.id,
    required this.partographId,
    required this.value,
    required this.time,
  });
}
