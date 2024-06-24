
import 'package:birthflow_movil/src/auth/models/auth_request.dart';
import 'package:birthflow_movil/src/auth/models/auth_response.dart';
import 'package:birthflow_movil/src/auth/models/logout_response.dart';
import 'package:birthflow_movil/src/auth/models/validate_token_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';


part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/users/authenticate')
  Future<AuthResponse> authenticate(@Body() AuthRequest request);

  @POST('/users/validate-token')
  Future<ValidateTokenResponse> validateToken(@Body() String token);

  @POST('/users/logout')
  Future<LogoutResponse> logout(@Body() String token);
}
