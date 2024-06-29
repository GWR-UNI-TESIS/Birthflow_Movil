import 'package:birthflow_movil/src/auth/models/authenticate_request.dart';
import 'package:birthflow_movil/src/auth/models/authenticate_response.dart';
import 'package:birthflow_movil/src/auth/models/token_request.dart';
import 'package:birthflow_movil/src/core/models/reponse/api_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {

  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/users/authenticate')
  Future<ApiResponse<AuthenticateResponse>> authenticate(
    @Body() AuthenticateRequest request,
  );

  @POST('/users/validate-token')
  Future<ApiResponse<AuthenticateResponse>> validateToken(
    @Body() TokenRequest request,
  );

  @POST('/users/logout')
  Future<ApiResponse<AuthenticateResponse>> logout(
    @Body() TokenRequest request,
  );
}
