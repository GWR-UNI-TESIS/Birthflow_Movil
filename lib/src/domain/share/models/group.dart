/// Representa un grupo de usuarios dentro del sistema.
/// 
/// Los grupos pueden ser públicos o privados, y cuentan con
/// información de creación y eliminación lógica.
class Group {
  /// Identificador único del grupo.
  final int id;

  /// Nombre del grupo.
  final String groupName;

  /// Indica si el grupo es público (`true`) o privado (`false`).
  final bool isPublic;

  /// Indica si el grupo ha sido eliminado lógicamente.
  final bool isDeleted;

  /// Usuario que creó el grupo.
  final String createdBy;

  /// Fecha y hora de creación del grupo.
  final DateTime createdAt;

  /// Fecha y hora en que el grupo fue eliminado.
  /// 
  /// Importante: aunque se guarde la fecha de eliminación, 
  /// se puede mantener el registro por motivos de auditoría.
  final DateTime deletedAt;

  /// Constructor de la clase [Group].
  Group({
    required this.id,
    required this.groupName,
    required this.isPublic,
    required this.isDeleted,
    required this.createdBy,
    required this.createdAt,
    required this.deletedAt,
  });
}
