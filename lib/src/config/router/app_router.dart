import 'dart:async';

import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/auth/views/login.dart';
import 'package:birthflow_movil/src/ui/auth/views/register.dart';
import 'package:birthflow_movil/src/ui/auth/views/splash.dart';
import 'package:birthflow_movil/src/ui/auth/views/welcome.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:birthflow_movil/src/ui/partograma/views/partograma.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  final AuthenticationBloc authBloc;

  AppRouter({required this.authBloc});

  CustomTransitionPage _buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  GoRoute _buildRoute({
    required String path,
    required String name,
    required Widget screen,
    List<RouteBase>? routeBase,
  }) {
    return GoRoute(
      path: path,
      name: name,
      pageBuilder: (context, state) => _buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: screen,
      ),
      routes: routeBase ?? const <RouteBase>[],
    );
  }

  late final GoRouter router = GoRouter(
    initialLocation: RutasNavegacion.splash.path,
    routes: [
      _buildRoute(
        path: RutasNavegacion.splash.path,
        name: RutasNavegacion.splash.name,
        screen: const SplashScreen(),
      ),
      _buildRoute(
        path: RutasNavegacion.home.path,
        name: RutasNavegacion.home.name,
        screen: HomeScreen(),
      ),
      _buildRoute(
        path: RutasNavegacion.auth.path,
        name: RutasNavegacion.auth.name,
        screen: const WelcomeScreen(),
        routeBase: <RouteBase>[
          // Add child routes
          _buildRoute(
            path: 'login',
            name: RutasNavegacion.login.name,
            screen: const LoginScreen(),
          ),
          _buildRoute(
            path: 'register',
            name: RutasNavegacion.register.name,
            screen: const RegisterScreen(),
          ),
        ],
      ),
      _buildRoute(
        path: RutasNavegacion.partograma.path,
        name: RutasNavegacion.partograma.name,
        screen: PartogramaScreen(),
      ),
    ],
    refreshListenable: _StreamToListenable([authBloc.stream]),
    redirect: _guard,
  );

  String? _guard(BuildContext context, GoRouterState state) {
    final isAuthenticated = authBloc.state is Authenticated;
    final isUnAuthenticated = authBloc.state is Unauthenticated;

    final initAuth = authBloc.state is Uninitialized;

    final unauthenticatedPaths = [
      RutasNavegacion.auth.path,
      '${RutasNavegacion.auth.path}/login', // Ruta completa para login
      '${RutasNavegacion.auth.path}/register',
    ];

    // Rutas que requieren autenticación
    final authenticatedPaths = [RutasNavegacion.partograma.path];

    final isUnauthenticatedPath = unauthenticatedPaths
        .any((path) => state.matchedLocation.contains(path));

    final isAuthenticatedPath =
        authenticatedPaths.any((path) => state.matchedLocation.contains(path));

    //Revisar el inicio
    final initScreen =
        state.matchedLocation.contains(RutasNavegacion.splash.path);

    if (initAuth && initScreen) return null;

    if (isUnAuthenticated && !isUnauthenticatedPath) {
      return RutasNavegacion.auth.path;
    }

    if (isUnAuthenticated && isAuthenticatedPath) {
      return RutasNavegacion.auth.path;
    }

    // Redirigir a la página de inicio si el usuario está autenticado y
    // está tratando de acceder a una página de autenticación
    if (isAuthenticated && (isUnauthenticatedPath || initScreen)) {
      return RutasNavegacion.home.path;
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
