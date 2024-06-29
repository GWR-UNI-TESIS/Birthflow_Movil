import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (_) => AuthenticationBloc(locator<AuthService>()),
      child: MaterialApp(
        home: AppEntry(),
      ),
    );
  }
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();
    final AppRouter appRouter = AppRouter(authBloc: authBloc);
    // Crea la instancia de AppRouter
    // final AppRouter router = AppRouter(authBloc: authBloc);
    return MaterialApp.router(
      title: 'Birthflow',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: appRouter.router.routeInformationProvider,
      routerDelegate: appRouter.router.routerDelegate,
      routeInformationParser: appRouter.router.routeInformationParser,
    );
  }
}
