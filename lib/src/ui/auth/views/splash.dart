import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/events/auth_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // wait for 2 seconds to show splash screen
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        BlocProvider.of<AuthenticationBloc>(context)
            .add(const AuthenticationStatusChecked());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthenticationBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          if (state is AuthFailure) {
            // Mostrar un mensaje de error si hubo un problema de autenticación
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
        mainAxisAlignment: MainAxisAlignment.center,
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
          CircularProgressIndicator(),
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
