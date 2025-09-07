/// Representa el estado actual de un partograma.
/// 
/// Incluye propiedades de control como archivado, silenciado,
/// marcado como favorito o asignado (`set`).
class PartographState {
  /// Identificador único del estado del partograma.
  /// 
  /// Puede ser `null` si aún no se ha almacenado en la base de datos.
  final int? id;

  /// Identificador del partograma al que pertenece este estado.
  final String partographId;

  /// Indica si el partograma está archivado.
  final bool isAchived;

  /// Indica si el partograma está marcado con la propiedad `set`.
  final bool set;

  /// Indica si el partograma está silenciado para notificaciones.
  final bool silenced;

  /// Indica si el partograma está marcado como favorito.
  final bool favorite;

  // /// Última fecha en que el partograma fue visualizado.
  // /// 
  // /// Comentado actualmente, pero puede utilizarse para registrar
  // /// la interacción más reciente del usuario con el partograma.
  // final DateTime lastViewDate;

  /// Constructor de la clase [PartographState].
  PartographState({
    this.id,
    required this.partographId,
    required this.isAchived,
    required this.set,
    required this.silenced,
    required this.favorite,
    // required this.lastViewDate,
  });
}
