import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/reset_password_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/validate_otp_use_case.dart';
import 'package:birthflow_movil/src/ui/forget_password/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/forget_password/bloc/events/forgot_password_event.dart';
import 'package:birthflow_movil/src/ui/forget_password/bloc/states/forgot_password_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _emailController = TextEditingController();
  final _otpController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _otpController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc(
          requestResetCodeUseCase: locator<RequestResetCodeUseCase>(),
          resetPasswordUseCase: locator<ResetPasswordUseCase>(),
          validateOtpUseCase: locator<ValidateOtpUseCase>()),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
        if (state is AccountError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        } else if (state is ResetPasswordSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }

         if (state is RequestResetCodeSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      }, builder: (context, state) {
        int currentStep = 0;
        if (state is StepChanged) {
          currentStep = state.step;
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Recuperar Contraseña'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Stepper(
              currentStep: currentStep,
              onStepContinue: () {
                if (currentStep == 0) {
                  context.read<ForgotPasswordBloc>().add(
                        RequestResetCodeEvent(email: _emailController.text),
                      );
                } else if (currentStep == 1) {
                  context.read<ForgotPasswordBloc>().add(
                        ValidateOtpEvent(
                          userId: '', // Actualizar con el userId real
                          otpCode: _otpController.text,
                        ),
                      );
                } else if (currentStep == 2) {
                  context.read<ForgotPasswordBloc>().add(
                        ResetPasswordEvent(
                          userId: '',
                          otpCode: _otpController.text,
                          newPassword: _newPasswordController.text,
                        ),
                      );
                }
              },
              onStepCancel: () {
                if (currentStep > 0) {
                  context.read<ForgotPasswordBloc>().add(
                        ResetPasswordStepChangeEvent(step: currentStep - 1),
                      );
                }
              },
              steps: [
                // Paso 1: Enviar correo
                Step(
                  title: const Text('Enviar correo'),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value == null || value.isEmpty
                          ? 'Ingrese su correo electrónico'
                          : null,
                    ),
                  ),
                  isActive: currentStep >= 0,
                ),
                // Paso 2: Ingresar código OTP
                Step(
                  title: const Text('Ingresar código OTP'),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextFormField(
                      controller: _otpController,
                      decoration: const InputDecoration(
                        labelText: 'Código OTP',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) => value == null || value.isEmpty
                          ? 'Ingrese el código OTP'
                          : null,
                    ),
                  ),
                  isActive: currentStep >= 1,
                ),
                // Paso 3: Ingresar nueva contraseña
                Step(
                  title: const Text('Nueva contraseña'),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _newPasswordController,
                          decoration: const InputDecoration(
                            labelText: 'Nueva Contraseña',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese su nueva contraseña';
                            }
                            final passwordRegex = RegExp(
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}\$',
                            );
                            if (!passwordRegex.hasMatch(value)) {
                              return 'Debe contener mayúsculas, minúsculas, números y símbolos';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _confirmPasswordController,
                          decoration: const InputDecoration(
                            labelText: 'Confirmar Nueva Contraseña',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Confirme su nueva contraseña';
                            }
                            if (value != _newPasswordController.text) {
                              return 'Las contraseñas no coinciden';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  isActive: currentStep >= 2,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
