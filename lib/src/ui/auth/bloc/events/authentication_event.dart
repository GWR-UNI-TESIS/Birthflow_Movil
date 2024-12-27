import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  // Evento disparado cuando el usuario inicia sesión
  const factory AuthenticationEvent.loggedIn({
    required String username,
    required String password,
  }) = LoggedIn;

  // Evento disparado cuando el usuario solicita cerrar sesión
  const factory AuthenticationEvent.logout() = Logout;
  // Evento disparado cuando el usuario se registra
  const factory AuthenticationEvent.register({
    required int id,
    required String nombres,
    required String apellidos,
    required String nombreUsuario,
    required String email,
    String? phoneNumber,
  }) = Register;

  // Evento disparado para verificar el estado de autenticación del usuario
  const factory AuthenticationEvent.refreshToken() = RefreshToken;
}
