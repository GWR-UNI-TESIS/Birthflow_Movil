import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_audit_log/partograph_audit_log.dart';

/// Representa una versión histórica de un partograma.
/// 
/// Se utiliza para mantener un registro de los cambios realizados a lo largo 
/// del tiempo, incluyendo la data completa del partograma en formato JSON y 
/// los logs de auditoría asociados.
class PartographVersion {
  /// Identificador único de la versión del partograma.
  final int id;

  /// Identificador del partograma al que pertenece esta versión.
  final String partographId;

  /// Fecha y hora en que se generó esta versión.
  final DateTime changedAt;

  /// Nombre del usuario que realizó el cambio.
  /// 
  /// Puede ser `null` si no se registró.
  final String? changedByName;

  /// Datos completos del partograma en formato JSON.
  /// 
  /// Se guarda como un `Map<String, dynamic>` para permitir la reconstrucción
  /// del estado completo del partograma en ese momento.
  final Map<String, dynamic> partographDataJson;

  /// Lista de logs de auditoría asociados a esta versión.
  /// 
  /// Puede ser `null` si no se registraron cambios detallados.
  final List<PartographAuditLog>? auditLogs;

  /// Constructor de la clase [PartographVersion].
  PartographVersion({
    required this.id,
    required this.partographId,
    required this.changedAt,
    required this.changedByName,
    required this.partographDataJson,
    this.auditLogs,
  });
}
