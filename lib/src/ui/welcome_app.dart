import 'package:app_settings/app_settings.dart';
import 'package:birthflow_movil/src/app_dev.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeAppScreen extends StatefulWidget {
  const WelcomeAppScreen({super.key});

  @override
  State<WelcomeAppScreen> createState() => _WelcomeAppScreenState();
}

class _WelcomeAppScreenState extends State<WelcomeAppScreen> {
  final ValueNotifier<bool> _isProcessing = ValueNotifier(false);

  Future<void> _requestNotificationPermission() async {
    _isProcessing.value = true;

    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    final NotificationSettings settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      _showEnableNotificationsDialog();
    } else {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('notifications_enabled', true);
      _navigateToApp();
    }
  }

  void _showEnableNotificationsDialog() {
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
                _navigateToApp();
              },
              child: const Text('Omitir'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                AppSettings.openAppSettings();
                _navigateToApp();
              },
              child: const Text('Ir a Configuración'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _navigateToApp() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('is_first_time', false);

      final Catalog catalog = await locator<CatalogRepository>().getCatalog();

      if (!mounted) return;
      Navigator.of(context).pop(); // Cierra el loader
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => AppDev(catalog: catalog)),
      );
    } catch (e) {
      if (!mounted) return;
      Navigator.of(context).pop(); // Cierra el loader
      _showCatalogErrorDialog();
    } finally {
      _isProcessing.value = false;
    }
  }

  void _showCatalogErrorDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error al cargar'),
        content: const Text(
            'No se pudo cargar la información necesaria. Verifica tu conexión e intenta de nuevo.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _navigateToApp(); // Reintenta
            },
            child: const Text('Reintentar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ValueListenableBuilder<bool>(
          valueListenable: _isProcessing,
          builder: (_, isLoading, __) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/welcome-amico.png',
                height: 260.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 20),
              const Text(
                '¡Bienvenido!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Para brindarte una mejor experiencia, necesitamos tu permiso para enviarte notificaciones importantes.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: isLoading ? null : _requestNotificationPermission,
                child: const Text('Continuar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
