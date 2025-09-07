import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';

// Notificaciones locales (Android) con flutter_local_notifications.
// ignore: avoid_classes_with_only_static_members
class NotificationHelper {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Llamar una vez (p. ej., en main()).
  static Future<void> initialize() async {
    // Requiere el recurso '@drawable/ic_notification'.
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@drawable/ic_notification');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  // Muestra una notificación simple.
  static Future<void> showNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    // Canal de alta importancia (ID estable).
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'high_importance_channel', // ID del canal
      'High Importance Notifications ', // Nombre del canal
      importance: Importance.max,
      priority: Priority.high,
      icon: '@drawable/ic_notification', // Icono pequeño
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    final logger = Logger();
    try {
      logger.i('Intentando mostrar notificación: $title - $body');
      //Muestra la notificacion
      await flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        platformChannelSpecifics,
      );
      logger.i('Notificación mostrada');
    } catch (e) {
      logger.e('Error al mostrar notificación: $e');
    }
  }
}
