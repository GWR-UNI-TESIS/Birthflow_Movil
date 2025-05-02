  import 'package:birthflow_movil/src/config/router/path.dart';
  import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
  import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
  import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
  import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
  import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:go_router/go_router.dart';

  class LoginScreen extends StatelessWidget with SnackbarMixin {
    const LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (BuildContext context, AuthenticationState state) {
          if (state is Unauthenticated) {
            if (state.message != null) {
              showErrorSnackbar(state.message!);
            }
          }
          if (state is Authenticated) {
            showSnackbar(state.message);
          }
        },
        child: _LoginView(),
      );
    }
  }

  class _LoginView extends StatefulWidget {
    @override
    _LoginViewState createState() => _LoginViewState();
  }

  class _LoginViewState extends State<_LoginView> {
    final _formKey = GlobalKey<FormState>();

    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    bool _obscurePassword = true;

    @override
    Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
      final isLoading = context.watch<AuthenticationBloc>().state is AuthLoading;

      return PopScope(
        canPop: !isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Iniciar sesión'),
          ),
          body: LoadingOverlay(
            isLoading: isLoading,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/birthflow_full_logo.png',
                        height: 150.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const Key('username_field'),
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
                        key: const Key('password_field'),
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Contraseña',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese una contraseña';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          context.go(AppPaths.welcome.login.forgetPassword.path);
                        },
                        child: const Text('¿Has olvidado tu contraseña?'),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: size.width / 1.3,
                        child: FilledButton(
                          key: const Key('login_button'),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final username = _usernameController.text;
                              final password = _passwordController.text;
                              context.read<AuthenticationBloc>().add(
                                    LoggedIn(
                                      username: username,
                                      password: password,
                                    ),
                                  );
                            }
                          },
                          child: const Text('Continuar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    @override
    void dispose() {
      _usernameController.dispose();
      _passwordController.dispose();
      super.dispose();
    }
  }
