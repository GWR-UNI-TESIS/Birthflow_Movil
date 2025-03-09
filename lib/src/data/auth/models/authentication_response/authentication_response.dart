import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_response.freezed.dart';
part 'authentication_response.g.dart';

@freezed
class AuthenticationResponse with _$AuthenticationResponse {
  // Representa la respuesta de una solicitud de autenticación exitosa
  const factory AuthenticationResponse({
    required String accessToken, // Token de autenticación
    required String refreshToken,
    UserAuthentication?
        user, // Objeto con la información del usuario autenticado
  }) = _AuthenticationResponse;

  // Crea una instancia de AuthenticationResponse a partir de un JSON
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
}
