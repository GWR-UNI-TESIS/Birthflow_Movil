import 'package:birthflow_movil/src/auth/models/authentication_response/authentication_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  // Estado inicial antes de cualquier acción de autenticación
  const factory AuthenticationState.uninitialized() = Uninitialized;

  // Estado durante el proceso de carga de autenticación (ej. inicio de sesión o registro)
  const factory AuthenticationState.loading() = AuthLoading;

  // Estado después de un registro exitoso
  const factory AuthenticationState.registrationSuccess() = RegistrationSuccess;

  // Estado después de una autenticación exitosa (ej. inicio de sesión)
  const factory AuthenticationState.authenticated({
    required AuthenticationResponse response,
  }) = Authenticated;

  // Estado después de una autenticación fallida
  const factory AuthenticationState.unauthenticated({String? message}) =
      Unauthenticated;

  // Estado después de un error durante la autenticación
  const factory AuthenticationState.failure({required String error}) = Failure;
}
