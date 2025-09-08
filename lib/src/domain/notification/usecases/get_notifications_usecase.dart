import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

/// Caso de uso: obtener las notificaciones del usuario.
abstract class GetNotificationsUseCase {
  /// Retorna la lista de notificaciones disponibles.
  Future<List<Notification>> execute();
}

/// Implementación que delega la consulta al NotificationRepository.
class GetNotificationsUseCaseImplementation
    implements GetNotificationsUseCase {
  final NotificationRepository _notificationRepository;

  GetNotificationsUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  /// Delega en el repositorio la obtención de notificaciones.
  Future<List<Notification>> execute() async {
    return await _notificationRepository.getNotifications();
  }
}
