import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ConfigurationScreen extends StatelessWidget {
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
              // Información del usuario
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
                          // Lógica para editar información del usuario
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

              // Cambio de contraseña
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

              // Información de la aplicación
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
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Ayuda y Soporte'),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    // Lógica para abrir página de ayuda
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
