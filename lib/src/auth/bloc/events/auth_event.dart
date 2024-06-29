import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loggedIn ({
    required String username,
    required String password,
  }) = LoggedIn;

  const factory AuthEvent.logoutRequested({required String token}) =
      LogoutRequested;

  const factory AuthEvent.authenticationStatusChecked() =
      AuthenticationStatusChecked;
}
