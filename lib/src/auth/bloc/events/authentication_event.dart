import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.loggedIn({
    required String username,
    required String password,
  }) = LoggedIn;

  const factory AuthenticationEvent.logoutRequested({required String token}) =
      LogoutRequested;

  const factory AuthenticationEvent.register({
    required int id,
    required String nombres,
    required String apellidos,
    required String nombreUsuario,
    required String email,
    String? phoneNumber,
    required String passwordHash,
  }) = Register;

  const factory AuthenticationEvent.authenticationStatusChecked() =
      AuthenticationStatusChecked;
}
