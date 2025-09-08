/// Representa el registro de compartición de un partograma.
/// 
/// Define qué usuario o grupo tiene acceso a un partograma en particular,
/// con qué tipo de permiso y quién es el propietario que lo compartió.
class PartographShare {
  /// Identificador único del registro de compartición.
  final int id;

  /// Identificador del partograma compartido.
  final String partographId;

  /// Identificador del usuario con el que se comparte.
  final String userId;

  /// Identificador del grupo con el que se comparte.
  final int groupId;

  /// Tipo de permiso otorgado.
  /// 
  /// Puede representar diferentes niveles de acceso (ejemplo: lectura, edición).
  final int permissionTypeId;

  /// Fecha y hora en que se creó el registro de compartición.
  final DateTime createdAt;

  /// Propietario del partograma que realizó la acción de compartir.
  final String owner;

  /// Constructor de la clase [PartographShare].
  PartographShare({
    required this.id,
    required this.partographId,
    required this.userId,
    required this.groupId,
    required this.permissionTypeId,
    required this.createdAt,
    required this.owner,
  });
}
