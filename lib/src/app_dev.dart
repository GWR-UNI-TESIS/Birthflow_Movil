import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';

import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (_) => locator<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => PartographsBloc(
            locator<PartographGetUseCase>(),
          ),
        ),
      ],
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
    return MaterialApp.router(
      title: 'Birthflow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routeInformationProvider: appRouter.router.routeInformationProvider,
      routerDelegate: appRouter.router.routerDelegate,
      routeInformationParser: appRouter.router.routeInformationParser,
    );
  }
}
