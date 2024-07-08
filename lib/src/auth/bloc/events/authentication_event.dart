import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.loggedIn ({
    required String username,
    required String password,
  }) = LoggedIn;

  const factory AuthenticationEvent.logoutRequested({required String token}) =
      LogoutRequested;

  const factory AuthenticationEvent.authenticationStatusChecked() =
      AuthenticationStatusChecked;
}
