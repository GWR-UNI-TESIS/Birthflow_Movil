import 'package:birthflow_movil/src/app_dev.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/core/firebase/firebase_service.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await loadEnvConfig();
  await initializeDependencies();
  FirebaseMessaging.onBackgroundMessage(
    FirebaseService.backgroundMessageHandler,
  );
  runApp(MyApp());
}

Future<void> loadEnvConfig() async {
  // Define la variable de entorno para determinar el entorno actual
  const String env = String.fromEnvironment('ENV', defaultValue: 'development');

  // Cargar el archivo correspondiente
  if (env == 'production') {
    await dotenv.load(fileName: '.env.production');
  } else {
    await dotenv.load(fileName: '.env.development');
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future catalogFuture;

  @override
  void initState() {
    super.initState();
    // Se intenta obtener el catálogo desde el servidor.
    catalogFuture = locator<CatalogRepository>().getCatalog();
  }

  void _retry() {
    setState(() {
      // Vuelve a intentar cargar el catálogo.
      catalogFuture = locator<CatalogRepository>().getCatalog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: catalogFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Mientras se espera la respuesta, se muestra un indicador de carga.
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (snapshot.hasError) {
          // Si ocurre un error (por ejemplo, fallo al conectar con el servidor)
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Error al conectar con el servidor'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _retry,
                      child: const Text('Reintentar'),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          // Si se obtiene el catálogo exitosamente, se invoca AppDev pasando el catálogo.
          return AppDev(catalog: snapshot.data as Catalog);
        }
      },
    );
  }
}
