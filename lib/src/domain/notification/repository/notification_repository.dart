abstract class NotificationRepository {
  Future<void> registerDeviceToken({
    required String userId,
    required String token,
    required String deviceInfo,
  });
}
