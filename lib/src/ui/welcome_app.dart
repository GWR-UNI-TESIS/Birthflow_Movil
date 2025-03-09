import 'package:app_settings/app_settings.dart';
import 'package:birthflow_movil/src/app_dev.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeAppScreen extends StatelessWidget {
  Future<void> _requestNotificationPermission(BuildContext context) async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    final NotificationSettings settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      _showEnableNotificationsDialog(context);
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('notifications_enabled', true);
      _navigateToApp(context);
    }
  }

  void _showEnableNotificationsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Activar Notificaciones'),
          content: const Text(
            'Las notificaciones están desactivadas. Actívalas en la configuración para recibir alertas importantes.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _navigateToApp(context);
              },
              child: const Text('Omitir'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                AppSettings.openAppSettings();
                _navigateToApp(context);
              },
              child: const Text('Ir a Configuración'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _navigateToApp(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('is_first_time', false);

    final Future<Catalog> catalogFuture =
        locator<CatalogRepository>().getCatalog();
    catalogFuture.then((catalog) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AppDev(catalog: catalog)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/welcome-amico.png',
              height: 260.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            const Text(
              '¡Bienvenido a Birthflow!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Para brindarte una mejor experiencia, necesitamos tu permiso para enviarte notificaciones importantes.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => _requestNotificationPermission(context),
              child: const Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
