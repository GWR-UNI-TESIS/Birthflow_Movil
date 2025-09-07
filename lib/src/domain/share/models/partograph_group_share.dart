/// Representa el registro de compartición de un grupo de partogramas.
/// 
/// Permite definir qué usuario o grupo tiene acceso a un grupo de partogramas
/// y con qué tipo de permiso.
class PartographGroupShare {
  /// Identificador único del registro de compartición.
  final int id;

  /// Identificador del grupo de partogramas al que se comparte el acceso.
  final int partographGroupId;

  /// Identificador del usuario con el que se comparte.
  /// 
  /// Puede ser `null` si el acceso fue otorgado a un grupo en lugar de un usuario individual.
  final String? userId;

  /// Identificador del grupo con el que se comparte.
  /// 
  /// Puede ser `null` si el acceso fue otorgado directamente a un usuario.
  final int? groupId;

  /// Tipo de permiso otorgado.
  /// 
  /// Puede representar diferentes niveles de acceso (ejemplo: lectura, edición).
  /// Puede ser `null` si no se definió explícitamente.
  final int? permissionTypeId;

  /// Fecha y hora en que se creó el registro de compartición.
  final DateTime createdAt;

  /// Constructor de la clase [PartographGroupShare].
  PartographGroupShare({
    required this.id,
    required this.partographGroupId,
    required this.userId,
    required this.groupId,
    required this.permissionTypeId,
    required this.createdAt,
  });
}
