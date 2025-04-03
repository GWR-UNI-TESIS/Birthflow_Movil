import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

abstract class UpdateDeviceSilenceStatusUseCase {
  Future<void> execute({
    required String token,
    required bool isSilenced,
  });
}

class UpdateDeviceSilenceStatusUseCaseImplementation
    implements UpdateDeviceSilenceStatusUseCase {
  final NotificationRepository _notificationRepository;

  UpdateDeviceSilenceStatusUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  Future<void> execute({
    required String token,
    required bool isSilenced,
  }) async {
    await _notificationRepository.updateDeviceSilenceStatus(
      token: token,
      isSilenced: isSilenced,
    );
  }
}
