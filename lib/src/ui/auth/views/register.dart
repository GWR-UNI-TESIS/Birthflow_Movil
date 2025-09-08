import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget with SnackbarMixin {
  const RegisterScreen();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
        if (state is RegistrationSuccess) {
          _showSnackbar(context, state.message);
        }

        if (state is Failure) {
          showErrorSnackbar(state.error);
        }
      },
      child: _RegisterView(),
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    showSnackbar(message);
    Navigator.pop(context);
  }
}

class _RegisterView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _secondNamesController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<AuthenticationBloc>().state is AuthLoading;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitud de Registro'),
        centerTitle: true,
      ),
      body: LoadingOverlay(
        isLoading: isLoading,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 40),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Complete los siguientes datos para solicitar su cuenta. Un administrador revisará su solicitud y aprobará la creación de su cuenta.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nombres',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese sus nombres';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _secondNamesController,
                    decoration: const InputDecoration(
                      labelText: 'Apellidos',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese sus apellidos';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Nombre de Usuario',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.account_circle),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese un nombre de usuario';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese un email';
                      }
                      // Expresión regular para validar email básico
                      final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                      if (!emailRegex.hasMatch(value)) {
                        return 'Ingrese un email válido';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Celular',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(8),
                    ],
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: size.width,
                    child: FilledButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthenticationBloc>().add(
                                Register(
                                  id: 0,
                                  nombres: _nameController.text,
                                  apellidos: _secondNamesController.text,
                                  nombreUsuario: _usernameController.text,
                                  email: _emailController.text,
                                  phoneNumber: _phoneController.text,
                                ),
                              );
                        }
                      },
                      child: const Text('Enviar Solicitud de Registro'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
