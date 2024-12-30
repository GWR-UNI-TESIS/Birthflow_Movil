import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

abstract class RegisterDeviceTokenUseCase {
  Future<void> execute({
    required String userId,
    required String token,
    required String deviceInfo,
  });
}

class RegisterDeviceTokenUseCaseImplementation
    implements RegisterDeviceTokenUseCase {
  final NotificationRepository _notificationRepository;

  RegisterDeviceTokenUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  Future<void> execute({
    required String userId,
    required String token,
    required String deviceInfo,
  }) async {
    await _notificationRepository.registerDeviceToken(
      userId: userId,
      token: token,
      deviceInfo: deviceInfo,
    );
  }
}
