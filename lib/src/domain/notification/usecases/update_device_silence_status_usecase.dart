import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

/// Caso de uso: actualizar el estado de silencio de un dispositivo (push on/off).
abstract class UpdateDeviceSilenceStatusUseCase {
  /// Aplica el estado de silencio para el token indicado (true = silenciado).
  Future<void> execute({
    required String token,
    required bool isSilenced,
  });
}

/// Implementación que delega en NotificationRepository.
class UpdateDeviceSilenceStatusUseCaseImplementation
    implements UpdateDeviceSilenceStatusUseCase {
  final NotificationRepository _notificationRepository;

  UpdateDeviceSilenceStatusUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  /// Delega la actualización del estado de silencio al repositorio.
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
