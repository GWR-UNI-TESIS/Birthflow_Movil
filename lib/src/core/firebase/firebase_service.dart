import 'package:birthflow_movil/firebase_options.dart';
import 'package:birthflow_movil/src/core/firebase/notification_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<String?> getDeviceToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      // ignore: avoid_print
      print('Error al obtener el token FCM: $e');
      return null;
    }
  }

  void listenToTokenRefresh(Function(String) onTokenRefresh) {
    _messaging.onTokenRefresh.listen(onTokenRefresh);
  }

  void listenToForegroundMessages(
    Function(
      String,
      String,
      Map<String, dynamic>,
    ) onMessage,
  ) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        onMessage(
          message.notification!.title ?? 'Notificación',
          message.notification!.body ?? '',
          message.data.isNotEmpty ? message.data : {},
        );

        NotificationHelper.showNotification(
          id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          title: message.notification!.title ?? 'Notificación',
          body: message.notification!.body ?? '',
        );
      }
    });
  }

  @pragma('vm:entry-point')
  static Future<void> backgroundMessageHandler(RemoteMessage message) async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await NotificationHelper.initialize();
    final notification = message.notification;
    if (notification != null) {
      await NotificationHelper.showNotification(
        id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        title: notification.title ?? 'Notificación en segundo plano',
        body: notification.body ?? '',
      );
    }
  }
}
