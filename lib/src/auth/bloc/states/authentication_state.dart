import 'package:birthflow_movil/src/auth/models/authentication_response/authentication_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.uninitialized() = Uninitialized;
  const factory AuthenticationState.loading() = AuthLoading;
  const factory AuthenticationState.authenticated({
    required AuthenticationResponse response,
  }) = Authenticated;
  const factory AuthenticationState.unauthenticated({String? message}) =
      Unauthenticated;
  const factory AuthenticationState.failure({required String error}) = Failure;
}
