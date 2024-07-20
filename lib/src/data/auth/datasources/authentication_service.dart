
import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_response/authentication_response.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/data/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/data/auth/models/user_register_request/user_register_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'authentication_service.g.dart';

@RestApi()
abstract class AuthenticationService {
  // Fábrica para crear una instancia de AuthenticationService
  factory AuthenticationService(Dio dio, {String baseUrl}) = _AuthenticationService;

   // Método para autenticar a un usuario (inicio de sesión)
  @POST('/api/Auth/Login')
  Future<ApiResponse<AuthenticationResponse>> authenticate(
    // Solicitud de autenticación con información de email y contraseña
    @Body() AuthenticationRequest request,
  );

  // Método para validar el token de un usuario autenticado previamente
  @POST('/users/validate-token')
  Future<ApiResponse<AuthenticationResponse>> validateToken(
    // Solicitud para validar token (usualmente solo el token)
    @Body() TokenRequest request,
  );

  // Método para registrar un nuevo usuario
  @POST('/api/Auth/Create/user')
  Future<ApiResponse<UserAuthentication>> register(
    // Información del nuevo usuario a registrar
    @Body() UserRegisterRequest request,
  );

  // Método para cerrar la sesión de un usuario autenticado
  @POST('/users/logout')
  Future<ApiResponse<AuthenticationResponse>> logout(
    // Solicitud para cerrar sesión (usualmente solo el token)
    @Body() TokenRequest request,
  );
}
