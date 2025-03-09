import 'package:flutter/material.dart';

class ConnectionErrorScreen extends StatelessWidget {
  final VoidCallback onRetry;

  const ConnectionErrorScreen({required this.onRetry, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/503_error_service.png',
              height: 260.0,
              fit: BoxFit.fill,
            ),
            const Text(
              'No se pudo conectar nuestro servidores',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: onRetry,
              child: const Text('Reintentar'),
            ),
          ],
        ),
      ),
    );
  }
}
