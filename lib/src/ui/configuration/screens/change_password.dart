import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/account/usecases/change_password_use_case.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_password/bloc.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_password/events/change_password_events.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_password/states/change_password_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  String? _validateCurrentPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña actual es obligatoria';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña no puede estar vacía';
    }
    // RegEx que valida: mínimo 8 caracteres, mayúsculas, minúsculas, dígito y símbolo.
    final passwordRegex =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(value)) {
      return 'Debe tener al menos 8 caracteres, incluir mayúsculas, minúsculas, un número y un símbolo.';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, confirma la nueva contraseña';
    }
    if (value != _newPasswordController.text) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }

  Widget _buildPasswordField({
    required String label,
    required TextEditingController controller,
    bool obscureText = true,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordBloc(locator<ChangePasswordUseCase>()),
      child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Contraseña actualizada con éxito'),
                ),
              );
              _formKey.currentState?.reset();
              _currentPasswordController.clear();
              _newPasswordController.clear();
              _confirmPasswordController.clear();
            },
            failure: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Cambiar Contraseña'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    _buildPasswordField(
                      label: 'Contraseña Actual',
                      controller: _currentPasswordController,
                      validator: _validateCurrentPassword,
                    ),
                    const SizedBox(height: 20),
                    _buildPasswordField(
                      label: 'Nueva Contraseña',
                      controller: _newPasswordController,
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 20),
                    _buildPasswordField(
                      label: 'Confirmar Nueva Contraseña',
                      controller: _confirmPasswordController,
                      validator: _validateConfirmPassword,
                    ),
                    const SizedBox(height: 30),
                    BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<ChangePasswordBloc>().add(
                                            ChangePasswordEvent.submitted(
                                              oldPassword:
                                                  _currentPasswordController
                                                      .text,
                                              newPassword:
                                                  _newPasswordController.text,
                                            ),
                                          );
                                    }
                                  },
                            child: isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : const Text('Actualizar Contraseña'),
                          ),
                        );
                      },
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
}
