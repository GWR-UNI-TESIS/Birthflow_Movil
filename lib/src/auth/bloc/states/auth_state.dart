import 'package:birthflow_movil/src/auth/models/auth_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.success({required AuthResponse response}) = AuthSuccess;
  const factory AuthState.failure({required String error}) = AuthFailure;
}
