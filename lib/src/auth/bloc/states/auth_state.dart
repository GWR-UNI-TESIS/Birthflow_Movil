import 'package:birthflow_movil/src/auth/models/authenticate_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.uninitialized() = Uninitialized;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated(
      {required AuthenticateResponse response}) = Authenticated;
  const factory AuthState.unauthenticated({String? message}) = Unauthenticated;
  const factory AuthState.failure({required String error}) = AuthFailure;
}
