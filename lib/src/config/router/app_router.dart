import 'dart:async';
import 'package:birthflow_movil/src/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/auth/views/login.dart';
import 'package:birthflow_movil/src/ui/auth/views/register.dart';
import 'package:birthflow_movil/src/ui/auth/views/splash.dart';
import 'package:birthflow_movil/src/ui/auth/views/welcome.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partograph.dart';
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
    initialLocation: RoutePaths.splash.path,
    routes: [
      _buildRoute(
        path: RoutePaths.splash.path,
        name: RoutePaths.splash.name,
        screen: const SplashScreen(),
      ),
      _buildRoute(
        path: RoutePaths.home.path,
        name: RoutePaths.home.name,
        screen: HomeScreen(),
      ),
      _buildRoute(
        path: RoutePaths.auth.path,
        name: RoutePaths.auth.name,
        screen: const WelcomeScreen(),
        routeBase: <RouteBase>[
          // Add child routes
          _buildRoute(
            path: 'login',
            name: RoutePaths.login.name,
            screen: const LoginScreen(),
          ),
          _buildRoute(
            path: 'register',
            name: RoutePaths.register.name,
            screen: const RegisterScreen(),
          ),
        ],
      ),
      _buildRoute(
        path: RoutePaths.partograma.path,
        name: RoutePaths.partograma.name,
        screen: PartographScreen(),
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
      RoutePaths.auth.path,
      '${RoutePaths.auth.path}/login', // Ruta completa para login
      '${RoutePaths.auth.path}/register',
    ];

    // Rutas que requieren autenticación
    final authenticatedPaths = [RoutePaths.partograma.path];

    final isUnauthenticatedPath = unauthenticatedPaths
        .any((path) => state.matchedLocation.contains(path));

    final isAuthenticatedPath =
        authenticatedPaths.any((path) => state.matchedLocation.contains(path));

    //Revisar el inicio
    final initScreen = state.matchedLocation.contains(RoutePaths.splash.path);

    if (initAuth && initScreen) return null;

    if (isUnAuthenticated && !isUnauthenticatedPath) {
      return RoutePaths.auth.path;
    }

    if (isUnAuthenticated && isAuthenticatedPath) {
      return RoutePaths.auth.path;
    }

    // Redirigir a la página de inicio si el usuario está autenticado y
    // está tratando de acceder a una página de autenticación
    if (isAuthenticated && (isUnauthenticatedPath || initScreen)) {
      return RoutePaths.home.path;
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
