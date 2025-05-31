import 'package:app_settings/app_settings.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/core/firebase/notification_helper.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/update_device_silence_status_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigurationScreen extends StatefulWidget {
  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  bool _notificationsEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadNotificationPreference();
  }

  Future<void> _loadNotificationPreference() async {
    final prefs = await SharedPreferences.getInstance();
    final isEnabled = prefs.getBool('notifications_enabled') ?? false;
    setState(() {
      _notificationsEnabled = isEnabled;
    });
  }

  Future<void> _updateNotificationPreference(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications_enabled', value);

    setState(() {
      _notificationsEnabled = value;
    });

    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken != null) {
      await locator<UpdateDeviceSilenceStatusUseCase>().execute(
        token: fcmToken,
        isSilenced: !value,
      );
    }

    if (value) {
      await NotificationHelper.initialize();
      final settings = await FirebaseMessaging.instance.requestPermission();
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        _showEnableNotificationsDialog();
      }
    } else {
      await NotificationHelper.flutterLocalNotificationsPlugin.cancelAll();
    }
  }

  void _showEnableNotificationsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Activar Notificaciones'),
          content: const Text(
            'Las notificaciones están desactivadas en el sistema. Actívalas en la configuración para recibir alertas importantes.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                AppSettings.openAppSettings();
              },
              child: const Text('Ir a Configuración'),
            ),
          ],
        );
      },
    );
  }

  Future<String> _getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Información del Usuario',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  if (state is Authenticated) {
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(state.response.userName),
                      subtitle: Text(state.response.email),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          context.go(
                            AppPaths.home.configurationPath.editInfo.path,
                          );
                        },
                      ),
                    );
                  } else {
                    return const ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Nombre de usuario'),
                      subtitle: Text('usuario@example.com'),
                    );
                  }
                },
              ),
              const Divider(),
              SwitchListTile(
                title: const Text('Recibir notificaciones en este dispositivo'),
                value: _notificationsEnabled,
                onChanged: (bool value) {
                  _updateNotificationPreference(value);
                },
              ),
              const SizedBox(height: 20),
              const Divider(),
              const Text(
                'Cambio de Contraseña',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Cambiar Contraseña'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    context.go(
                      AppPaths.home.configurationPath.changePassword.path,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const Text(
                'Información de la Aplicación',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              FutureBuilder<String>(
                future: _getAppVersion(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Versión de la Aplicación'),
                      subtitle: Text(''),
                    );
                  } else if (snapshot.hasError) {
                    return const ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Versión de la Aplicación'),
                      subtitle: Text('Error al obtener la versión'),
                    );
                  } else {
                    return ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('Versión de la Aplicación'),
                      subtitle: Text(snapshot.data ?? 'Desconocida'),
                    );
                  }
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'GWR Software\n'
                'Desarrollado por la Universidad Nacional de Ingeniería\n'
                'Proyecto de desarrollo institucional\n\n'
                '© 2025 Universidad Nacional de Ingeniería. Todos los derechos reservados.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
