/// Representa el registro de la variedad de posición de la presentación fetal
/// dentro del partograma.
/// 
/// Incluye información sobre el plano de Hodge, la posición fetal y el 
/// momento en que se realizó el registro.
class PresentationPositionVariety {
  /// Identificador único del registro.
  /// 
  /// Puede ser `null` si aún no se ha guardado en la base de datos.
  final int? id;

  /// Identificador del partograma al que pertenece este registro.
  final String partographId;

  /// Plano de Hodge en el que se encuentra la presentación fetal.
  /// 
  /// Generalmente expresado en valores del 1 al 4.
  final int hodgePlane;

  /// Posición fetal registrada.
  /// 
  /// Puede representarse con códigos numéricos (ejemplo: 1 = occipito-izquierda, 
  /// 2 = occipito-derecha, etc., según catálogo definido).
  final int position;

  /// Fecha y hora en que se registró la variedad de posición.
  final DateTime time;

  /// Constructor de la clase [PresentationPositionVariety].
  PresentationPositionVariety({
    this.id,
    required this.partographId,
    required this.hodgePlane,
    required this.position,
    required this.time,
  });
}
