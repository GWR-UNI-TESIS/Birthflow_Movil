import 'package:birthflow_movil/src/app_dev.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await loadEnvConfig();
  await initializeDependencies();

  final catalog =
      await locator<CatalogRepository>().getCatalog(); // Carga el catálogo
  runApp(
    AppDev(
      catalog: catalog,
    ),
  );
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
