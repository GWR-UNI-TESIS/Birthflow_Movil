import 'dart:async';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/auth/views/login.dart';
import 'package:birthflow_movil/src/ui/auth/views/register.dart';
import 'package:birthflow_movil/src/ui/auth/views/splash.dart';
import 'package:birthflow_movil/src/ui/auth/views/welcome.dart';
import 'package:birthflow_movil/src/ui/home/view/create_partograph.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:birthflow_movil/src/ui/home/view/search_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/chart_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partograph_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  final AuthenticationBloc authBloc;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  AppRouter({required this.authBloc});

  // Construye una página con una transición predeterminada
  CustomTransitionPage _buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 600),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  // Construye una ruta con propiedades específicas
  GoRoute _buildRoute({
    required String path,
    required Widget screen,
    List<RouteBase>? routeBase,
  }) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) => _buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: screen,
      ),
      routes: routeBase ?? const <RouteBase>[],
    );
  }

  // Inicializa el enrutador GoRouter
  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,

    // Ubicación inicial de la aplicación (ruta del splash)
    initialLocation: AppPaths.splash.goRoute,
    // Definición de rutas
    routes: [
      // Ruta del splash
      _buildRoute(
        path: AppPaths.splash.goRoute,
        screen: const SplashScreen(),
      ),
      // Ruta de inicio
      _buildRoute(
        path: AppPaths.home.goRoute,
        screen: HomeScreen(),
        routeBase: <RouteBase>[
          // Rutas hijas de la ruta de inicio (se agregan aquí)
          _buildRoute(
            path: AppPaths.home.create.goRoute,
            screen: CreatePartographScreen(),
          ),
          _buildRoute(
            path: AppPaths.home.search.goRoute,
            screen: SearchScreen(),
          ),
          // Ruta del partograma
          GoRoute(
            path: AppPaths.home.partographPath.goRoute,
            builder: (context, state) {
              final partographId =
                  state.pathParameters[AppPaths.home.partographPath.id]!;

              return PartographScreen(partographId: partographId);
            },
            routes: [
              GoRoute(
                path: AppPaths.home.partographPath.cervicalDilationList.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return CervicalDilationListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath.cervicalDilationList
                        .create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return CervicalDilationEditScreen(
                        cervicalDilationEditData: CervicalDilationEditData(
                          cervicalDilation: null,
                          partographId: partographId,
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.cervicalDilationList.edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as CervicalDilationEditData;
                      return CervicalDilationEditScreen(
                        cervicalDilationEditData: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath.chart.goRoute,
                builder: (context, state) {
                  return ChartScreen();
                },
              ),
              GoRoute(
                path: AppPaths
                    .home.partographPath.medicalSurveillanceListPath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return MedicalSurveillanceListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath
                        .medicalSurveillanceListPath.create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return MedicalSurveillanceEditScreen(
                        model: MedicalSurveillanceEditData(
                          medicalSurveillanceTable: null,
                          partographId: partographId,
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.cervicalDilationList.edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as MedicalSurveillanceEditData;
                      return MedicalSurveillanceEditScreen(
                        model: data,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // Ruta de autenticación
      _buildRoute(
        path: AppPaths.welcome.goRoute,
        screen: const WelcomeScreen(),
        routeBase: <RouteBase>[
          // Rutas hijas de la ruta de autenticación (se agregan aquí)
          _buildRoute(
            path: AppPaths.welcome.login.goRoute,
            screen: const LoginScreen(),
          ),
          _buildRoute(
            path: AppPaths.welcome.register.goRoute,
            screen: const RegisterScreen(),
          ),
        ],
      ),
    ],
    // Escuchador para refrescar la lista de rutas basado en el stream del AuthenticationBloc
    refreshListenable: _StreamToListenable([authBloc.stream]),
    // Función para redireccionamiento basado en el estado de autenticación
    redirect: _guard,
  );

  String? _guard(BuildContext context, GoRouterState state) {
    // Verifica el estado de autenticación
    final isAuthenticated = authBloc.state is Authenticated;
    final isUnAuthenticated = authBloc.state is Unauthenticated;
    final initAuth = authBloc.state is Uninitialized;

    final unauthenticatedPaths = [
      AppPaths.welcome.goRoute,
      AppPaths.welcome.login.goRoute,
      AppPaths.welcome.register.goRoute,
    ];

    // Rutas que requieren autenticación
    final authenticatedPaths = [
      AppPaths.home.create.goRoute,
      AppPaths.home.partographPath.goRoute,
    ];

    final isUnauthenticatedPath = unauthenticatedPaths
        .any((path) => state.matchedLocation.contains(path));

    final isAuthenticatedPath =
        authenticatedPaths.any((path) => state.matchedLocation.contains(path));

    //Revisar el inicio
    final initScreen = state.matchedLocation.contains(
      AppPaths.splash.goRoute,
    );

    if (initAuth && initScreen) return null;

    if (isUnAuthenticated && !isUnauthenticatedPath) {
      return AppPaths.welcome.goRoute;
    }

    if (isUnAuthenticated && isAuthenticatedPath) {
      return AppPaths.welcome.goRoute;
    }

    // Redirigir a la página de inicio si el usuario está autenticado y
    // está tratando de acceder a una página de autenticación
    if (isAuthenticated && (isUnauthenticatedPath || initScreen)) {
      return AppPaths.home.path;
    }

    // Permitir el acceso a la ruta solicitada
    return null;
  }
}

class _StreamToListenable extends ChangeNotifier {
  late final List<StreamSubscription> subscriptions;

  _StreamToListenable(List<Stream> streams) {
    subscriptions = [];
    for (final e in streams) {
      final s = e.asBroadcastStream().listen(_tt);
      subscriptions.add(s);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    for (final e in subscriptions) {
      e.cancel();
    }
    super.dispose();
  }

  void _tt(event) => notifyListeners();
}
