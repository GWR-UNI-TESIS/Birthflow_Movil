import 'package:birthflow_movil/src/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Pantalla de Splash
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Espera 2 segundos para mostrar la pantalla de splash
    Future.delayed(const Duration(seconds: 1), () {
      // Verifica si el widget aún está en el árbol de widgets
      if (mounted) {
        // Dispara el evento AuthenticationStatusChecked del AuthenticationBloc
        BlocProvider.of<AuthenticationBloc>(context).add(
          const AuthenticationStatusChecked(),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (BuildContext context, AuthenticationState state) {
          if (state is Failure) {
            // Muestra un SnackBar con el mensaje de error de autenticación
            _showErrorSnackbar(context, state.error);
          }
        },
        child: _buildSplashContent(),
      ),
    );
  }

  Widget _buildSplashContent() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido
        children: [
          Text(
            'BirthFlow',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Sistema de gestión de partogramas',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          CircularProgressIndicator(), // Muestra un indicador de progreso circular
        ],
      ),
    );
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
