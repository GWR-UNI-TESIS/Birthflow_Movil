import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

/// Caso de uso: obtener notificaciones asociadas a un partograma.
abstract class GetPartographNotificationsUseCase {
  /// Retorna las notificaciones del partograma indicado por [partographId].
  Future<List<Notification>> execute(String partographId);
}

/// Implementación que delega en NotificationRepository.
class GetPartographNotificationsUseCaseImplementation
    implements GetPartographNotificationsUseCase {
  final NotificationRepository _notificationRepository;

  GetPartographNotificationsUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  /// Delegación directa al repositorio.
  Future<List<Notification>> execute(String partographId) async {
    return await _notificationRepository
        .getPartographNotifications(partographId);
  }
}
