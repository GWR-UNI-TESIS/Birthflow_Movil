import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

abstract class GetNotificationsUseCase {
  Future<List<Notification>> execute();
}

class GetNotificationsUseCaseImplementation
    implements GetNotificationsUseCase {
  final NotificationRepository _notificationRepository;

  GetNotificationsUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  Future<List<Notification>> execute() async {
    return await _notificationRepository.getNotifications();
  }
}
