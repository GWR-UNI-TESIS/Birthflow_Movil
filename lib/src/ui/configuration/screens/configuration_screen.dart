import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/core/firebase/notification_helper.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:open_app_settings/open_app_settings.dart';
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
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isEnabled = prefs.getBool('notifications_enabled') ?? false;
    setState(() {
      _notificationsEnabled = isEnabled;
    });
  }

  Future<void> _updateNotificationPreference(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications_enabled', value);
    setState(() {
      _notificationsEnabled = value;
    });

    if (value) {
      final NotificationSettings settings =
          await FirebaseMessaging.instance.requestPermission();

      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        _showEnableNotificationsDialog();
      } else {
        await FirebaseMessaging.instance.subscribeToTopic('general');
      }
    } else {
      await FirebaseMessaging.instance.unsubscribeFromTopic('general');
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
                OpenAppSettings.openAppSettings();
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
              const Text(
                'Notificaciones',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                title: const Text('Habilitar Notificaciones'),
                value: _notificationsEnabled,
                onChanged: (bool? value) {
                  if (value != null) {
                    _updateNotificationPreference(value);
                  }
                },
              ),
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
              const Divider(),
              const Text(
                'Información de la Aplicación',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              FutureBuilder<String>(
                future: _getAppVersion(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const ListTile(
                      leading: Icon(Icons.info),
                      title: Text('Versión de la Aplicación'),
                      subtitle: Text('Cargando...'),
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
            ],
          ),
        ),
      ),
    );
  }
}
