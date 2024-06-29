import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/events/auth_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _LoginView();
  }
}

class _LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  // Controladores para los campos de texto
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocListener<AuthenticationBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          if (state is Unauthenticated) {
            if (state.message != null) {
              _showErrorSnackbar(context, state.message!);
            }
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BirthFlow',
                style: TextStyle(
                  color: Color.fromARGB(255, 59, 20, 104),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Iniciar sesión',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              // Email
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.02,
                ),
                child: TextField(
                  controller: _usernameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 59, 20, 104),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              // Password
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1,
                  vertical: size.height * 0.02,
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 59, 20, 104),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Button
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 59, 20, 108),
                  ),
                ),
                onPressed: () {
                  final username = _usernameController.text;
                  final password = _passwordController.text;

                  // Dispara el evento del bloc con los valores ingresados
                  context.read<AuthenticationBloc>().add(
                        LoggedIn(username: username, password: password),
                      );
                },
                child: const Text(
                  'Continuar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
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

  @override
  void dispose() {
    // Limpia los controladores cuando ya no se necesiten
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
