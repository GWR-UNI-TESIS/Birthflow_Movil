import 'package:birthflow_movil/src/domain/notification/models/notification.dart';

abstract class NotificationRepository {
  Future<void> registerDeviceToken({
    required String userId,
    required String token,
    required String deviceInfo,
  });

  Future<List<Notification>> getNotifications();

  Future<List<Notification>> getPartographNotifications(String partographId);
}
