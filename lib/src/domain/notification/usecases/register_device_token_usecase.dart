import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';

/// Caso de uso: registrar el token FCM del dispositivo para un usuario.
abstract class RegisterDeviceTokenUseCase {
  /// Registra el token y metadatos del dispositivo en backend.
  Future<void> execute({
    required String userId,
    required String token,
    required String deviceInfo,
  });
}

/// Implementación que delega en NotificationRepository.
class RegisterDeviceTokenUseCaseImplementation
    implements RegisterDeviceTokenUseCase {
  final NotificationRepository _notificationRepository;

  RegisterDeviceTokenUseCaseImplementation({
    required NotificationRepository notificationRepository,
  }) : _notificationRepository = notificationRepository;

  @override
  /// Delega el registro del token al repositorio de notificaciones.
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
