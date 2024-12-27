
import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_response/authentication_response.dart';
import 'package:birthflow_movil/src/data/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/data/auth/models/user_register_request/user_register_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_service.g.dart';

@RestApi()
abstract class AuthenticationService {
  // Fábrica para crear una instancia de AuthenticationService
  factory AuthenticationService(Dio dio, {String baseUrl}) = _AuthenticationService;

   // Método para autenticar a un usuario (inicio de sesión)
  @POST('/api/auth/login')
  Future<ApiResponse<AuthenticationResponse>> authenticate(
    // Solicitud de autenticación con información de email y contraseña
    @Body() AuthenticationRequest request,
  );

  // Método para validar el token de un usuario autenticado previamente
  @POST('/api/auth/refresh')
  Future<ApiResponse<AuthenticationResponse>> refreshToken(
    // Solicitud para validar token (usualmente solo el token)
    @Body() TokenRequest request,
  );

  // Método para registrar un nuevo usuario
  @POST('/api/auth/create/user')
  Future<ApiResponse<String>> register(
    // Información del nuevo usuario a registrar
    @Body() UserRegisterRequest request,
  );

  // Método para cerrar la sesión de un usuario autenticado
  @POST('/api/auth/logout')
  Future<ApiResponse<String>> logout(
    // Solicitud para cerrar sesión (usualmente solo el token)
    @Body() TokenRequest request,
  );
}
