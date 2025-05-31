import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/login-illustration.png',
              height: 220.0,
              fit: BoxFit.fill,
              
            ),
            Text(
              'Bienvenido',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 5.0),
            Text(
              'Sistema de gestion de partogramas',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 80.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: size.width / 1.3,
                  child: FilledButton(
                    onPressed: () =>
                        context.go(AppPaths.welcome.register.path),
                    child: const Text('Registrarse'),
                  ),
                ),
                const SizedBox(width: 50.0),
                SizedBox(
                  width: size.width / 1.3,
                  child: TextButton(
                    onPressed: () => context.go(AppPaths.welcome.login.path),
                    child: const Text('Iniciar sesión'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
