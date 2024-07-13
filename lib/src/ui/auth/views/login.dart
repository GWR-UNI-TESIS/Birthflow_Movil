import 'package:birthflow_movil/src/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/auth/bloc/states/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
         // Si el estado es Unauthenticated y hay un mensaje de error, muestra un SnackBar
        if (state is Unauthenticated) {
          if (state.message != null) {
            _showErrorSnackbar(context, state.message!);
          }
        }
      },
      child: _LoginView(),
    );
  }

  void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(message),
        backgroundColor: Colors.red,
        showCloseIcon: true,
      ),
    );
  }
}

class _LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _formKey = GlobalKey<FormState>();
  
  // Controladores para los campos de usuario y contraseña
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLoading = context.watch<AuthenticationBloc>().state is AuthLoading;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BirthFlow',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Iniciar sesión',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 40),
                    // Email
                    TextFormField(
                      controller: _usernameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Usuario',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese un usuario';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 20),

                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Contraseña',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese una contraseña';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 50),
                    // Button
                    SizedBox(
                      width: size.width / 1.3,
                      child: FilledButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final username = _usernameController.text;
                            final password = _passwordController.text;

                            // Dispara el evento del bloc con los valores ingresados
                            context.read<AuthenticationBloc>().add(
                                  LoggedIn(
                                    username: username,
                                    password: password,
                                  ),
                                );
                          }
                        },
                        child: const Text(
                          'Continuar',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
           // Muestra un indicador de progreso circular mientras se carga
          if (isLoading)
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(249, 249, 249, 0.9),
              child: const Center(
                child: CircularProgressIndicator(
                  backgroundColor:
                      Colors.transparent, // Oculta el fondo del indicador

                  strokeWidth: 5.0, // Ajusta el grosor del indicador
                  semanticsLabel: 'Cargando...', // Etiqueta para accesibilidad
                ),
              ),
            )
          else
            Container(),
        ],
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
