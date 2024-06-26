import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:flutter/material.dart';

class AppDev extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BirthFlow v1',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
