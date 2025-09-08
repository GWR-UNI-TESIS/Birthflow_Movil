/// Representa una notificación programada dentro del sistema.
/// 
/// Puede estar asociada a un partograma específico y contiene la 
/// información básica para mostrar al usuario.
class Notification {
  /// Identificador único de la notificación.
  final int notificationId;

  /// Título de la notificación.
  final String title;

  /// Mensaje o contenido principal de la notificación.
  final String message;

  /// Fecha y hora programada para mostrar la notificación.
  final DateTime scheduledFor;

  /// Fecha y hora en que la notificación fue creada.
  /// 
  /// Puede ser `null` si no se registró al momento de la creación.
  final DateTime? createAt;

  /// Identificador del partograma asociado a la notificación.
  /// 
  /// Puede ser `null` si no está vinculada a ningún partograma.
  final String? partographId;

  /// Constructor de la clase [Notification].
  Notification({
    required this.notificationId,
    required this.title,
    required this.message,
    required this.scheduledFor,
    this.createAt,
    this.partographId,
  });
}
