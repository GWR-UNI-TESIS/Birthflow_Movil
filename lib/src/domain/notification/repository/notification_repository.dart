import 'package:birthflow_movil/src/domain/notification/models/notification.dart';

/// Contrato del repositorio de notificaciones: registro de token y consulta de notificaciones.
abstract class NotificationRepository {
  /// Registra/asocia el token FCM del dispositivo al usuario (para recibir push).
  Future<void> registerDeviceToken({
    required String userId,     // Id de usuario en backend
    required String token,      // Token FCM
    required String deviceInfo, // Identificador/descripción del dispositivo
  });

  /// Actualiza el estado de silencio para el dispositivo (silenciar/activar push).
  Future<void> updateDeviceSilenceStatus({
    required String token,      // Token FCM a modificar
    required bool isSilenced,   // true = silenciado
  });

  /// Obtiene las notificaciones del usuario (orden/filtrado según implementación).
  Future<List<Notification>> getNotifications();

  /// Obtiene notificaciones relacionadas a un partograma específico.
  Future<List<Notification>> getPartographNotifications(String partographId);
}
