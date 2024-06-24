import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested({
    required String username,
    required String password,
  }) = LoginRequested;

  const factory AuthEvent.logoutRequested({required String token}) =
      LogoutRequested;

  const factory AuthEvent.validateToken() =
      ValidateToken;
}
