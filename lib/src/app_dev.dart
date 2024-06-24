import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:birthflow_movil/src/ui/home/view/login.dart';

class AppDev extends StatelessWidget {
  final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
    path: '/',
     builder: (context, state) => const Login(),
  ),
  ],
);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
    routerConfig: _router,
      title: 'BirthFlow v1',
     theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
    
  }

}

