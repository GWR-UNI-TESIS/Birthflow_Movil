import 'package:birthflow_movil/firebase_options.dart';
import 'package:birthflow_movil/src/app_dev.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/core/firebase/firebase_service.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:birthflow_movil/src/ui/connection_error_screen.dart';
import 'package:birthflow_movil/src/ui/welcome_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await loadEnvConfig();
  await initializeDependencies();
  FirebaseMessaging.onBackgroundMessage(
    FirebaseService.backgroundMessageHandler,
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // O light
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

Future<void> loadEnvConfig() async {
  const String env = String.fromEnvironment('ENV', defaultValue: 'development');
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
  late Future<bool> _isFirstTime;

  @override
  void initState() {
    super.initState();
    _isFirstTime = _checkFirstTime();
  }

  Future<bool> _checkFirstTime() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('is_first_time') ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _isFirstTime,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }

        final bool isFirstTime = snapshot.data ?? false;

        if (isFirstTime) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            supportedLocales: [
              Locale('es', 'ES'),
            ],
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: WelcomeAppScreen(),
          );
        } else {
          return AppLoader(); // Aquí no usamos otro MaterialApp, AppEntry lo manejará.
        }
      },
    );
  }
}

class AppLoader extends StatefulWidget {
  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  late Future catalogFuture;

  @override
  void initState() {
    super.initState();
    catalogFuture = locator<CatalogRepository>().getCatalog();
  }

  void _retry() {
    setState(() {
      catalogFuture = locator<CatalogRepository>().getCatalog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: catalogFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: ConnectionErrorScreen(
                onRetry: _retry,
              ),
            ),
          );
        } else {
          return AppDev(catalog: snapshot.data as Catalog);
        }
      },
    );
  }
}
