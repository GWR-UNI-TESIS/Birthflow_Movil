import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

abstract class GetPartographNotificationsUseCase {
  Future<List<Notification>> execute(String partographId);
}

class GetPartographNotificationsUseCaseImplementation
    implements GetPartographNotificationsUseCase {
  final NotificationRepository _notificationRepository;

  GetPartographNotificationsUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  Future<List<Notification>> execute(String partographId) async {
    return await _notificationRepository
        .getPartographNotifications(partographId);
  }
}
