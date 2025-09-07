/// Representa un grupo de partogramas dentro del sistema.
/// 
/// Un grupo permite organizar y gestionar varios partogramas bajo una misma entidad.
/// Incluye información de creación, actualización y eliminación lógica.
class PartographGroup {
  /// Identificador único del grupo de partogramas.
  final int id;

  /// Nombre del grupo de partogramas.
  final String name;

  /// Descripción del grupo (ejemplo: finalidad o detalles del grupo).
  final String description;

  /// Usuario que creó el grupo.
  final String createdBy;

  /// Fecha y hora de creación del grupo.
  final DateTime createdAt;

  /// Fecha y hora de la última actualización del grupo.
  final DateTime updatedAt;

  /// Indica si el grupo fue eliminado lógicamente.
  final bool isDeleted;

  /// Fecha y hora en que el grupo fue eliminado.
  /// 
  /// Puede ser útil para auditoría y control histórico.
  final DateTime deletedAt;

  /// Constructor de la clase [PartographGroup].
  PartographGroup({
    required this.id,
    required this.name,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.deletedAt,
  });
}
