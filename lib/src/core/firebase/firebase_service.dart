import 'package:birthflow_movil/firebase_options.dart';
import 'package:birthflow_movil/src/core/firebase/notification_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// Servicio de utilidades para FCM (Firebase Cloud Messaging).
// Asume que Firebase ya fue inicializado y que el usuario otorgó permisos de notificación.
class FirebaseService { 
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  // Obtiene el token FCM del dispositivo.
  // Nota: el token puede cambiar (reinstalación, restore, settings del SO), por eso conviene persistirlo en backend y escuchar refresh.
  Future<String?> getDeviceToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      // Solo para depuración local. En producción, usar un logger.
      // ignore: avoid_print
      print('Error al obtener el token FCM: $e');
      return null;
    }
  }

  // Suscribe un callback para cuando el token se renueva.
  // Importante: actualiza tu backend con el nuevo token para no perder la capacidad de enviar push.
  void listenToTokenRefresh(Function(String) onTokenRefresh) {
    _messaging.onTokenRefresh.listen(onTokenRefresh);
  }

  // Escucha notificaciones recibidas en primer plano (app abierta).
  // onMessage: callback que recibe título, cuerpo y data del mensaje para actualizar UI/estado.
  void listenToForegroundMessages(
    Function(
      String,
      String,
      Map<String, dynamic>,
    ) onMessage,
  ) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // message.notification puede ser null en "data-only" messages.
      if (message.notification != null) {
        onMessage(
          message.notification!.title ?? 'Notificación',
          message.notification!.body ?? '',
          message.data.isNotEmpty ? message.data : {},
        );

        // Muestra una notificación local para el caso de primer plano.
        // Asegúrate de haber inicializado canales en Android y permisos en iOS.
        NotificationHelper.showNotification(
          id: DateTime.now().millisecondsSinceEpoch ~/ 1000, // id simple para evitar colisiones
          title: message.notification!.title ?? 'Notificación',
          body: message.notification!.body ?? '',
        );
      }
    });
  }

  // Handler para mensajes en segundo plano/terminada.
  @pragma('vm:entry-point')
  static Future<void> backgroundMessageHandler(RemoteMessage message) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await NotificationHelper.initialize();

    final notification = message.notification;
    if (notification != null) {
      // Muestra notificación local cuando llega en background.
      await NotificationHelper.showNotification(
        id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        title: notification.title ?? 'Notificación en segundo plano',
        body: notification.body ?? '',
      );
    }
  }
}
