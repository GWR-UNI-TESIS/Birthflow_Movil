/// Representa un registro de auditoría sobre los cambios realizados en un partograma.
/// 
/// Se utiliza para mantener un historial detallado de modificaciones,
/// incluyendo la entidad afectada, el campo modificado, los valores antes 
/// y después del cambio, así como la información del usuario que lo realizó.
class PartographAuditLog {
  /// Identificador único del registro de auditoría.
  final int id;

  /// Identificador del partograma al que pertenece este registro de auditoría.
  final String partographId;

  /// Nombre de la entidad modificada (ejemplo: "CervicalDilation").
  final String entityName;

  /// Nombre del campo que fue modificado.
  final String fieldName;

  /// Valor previo al cambio.
  final String oldValue;

  /// Nuevo valor después del cambio.
  final String newValue;

  /// Fecha y hora en que ocurrió el cambio.
  final DateTime changedAt;

  /// Usuario que realizó el cambio.
  final String changedBy;

  /// Identificador de la versión del partograma asociada a este cambio.
  final int partographVersionId;

  /// Constructor de la clase [PartographAuditLog].
  PartographAuditLog({
    required this.id,
    required this.partographId,
    required this.entityName,
    required this.fieldName,
    required this.oldValue,
    required this.newValue,
    required this.changedAt,
    required this.changedBy,
    required this.partographVersionId,
  });
}
