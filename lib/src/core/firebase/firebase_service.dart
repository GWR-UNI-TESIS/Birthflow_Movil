import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<String?> getDeviceToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      print('Error al obtener el token FCM: $e');
      return null;
    }
  }

  void listenToTokenRefresh(Function(String) onTokenRefresh) {
    _messaging.onTokenRefresh.listen(onTokenRefresh);
  }

  void listenToForegroundMessages(Function(String, String) onMessage) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        onMessage(
          message.notification!.title ?? 'Notificación',
          message.notification!.body ?? '',
        );
      }
    });
  }
}
