import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_request.freezed.dart';
part 'authentication_request.g.dart';

@freezed
class AuthenticationRequest with _$AuthenticationRequest {
  // Representa una solicitud de autenticación (ej. inicio de sesión)
  const factory AuthenticationRequest({
    required String email, // Email del usuario (opcional)
    required String password, // Contraseña del usuario
  }) = _AuthenticationRequest;

  // Crea una instancia de AuthenticationRequest a partir de un JSON
  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationRequestFromJson(json);
}
