import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Birthflow',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                 onPressed: () => context.go('/auth/register'),
                  child: const Text('Registrarse'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                   onPressed: () => context.go('/auth/login'),
                  child: const Text('Iniciar sesión'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
