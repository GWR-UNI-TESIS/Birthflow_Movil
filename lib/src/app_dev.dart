import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(context);

    return BlocProvider(
      create: (context) => AuthBloc(locator<AuthService>()),
      child: MaterialApp.router(
        title: 'BirthFlow v1',
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
