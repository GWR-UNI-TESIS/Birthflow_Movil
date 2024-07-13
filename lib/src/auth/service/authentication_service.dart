import 'package:birthflow_movil/src/auth/models/authentication_request/authentication_request.dart';
import 'package:birthflow_movil/src/auth/models/authentication_response/authentication_response.dart';
import 'package:birthflow_movil/src/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/auth/models/token_request/token_request.dart';
import 'package:birthflow_movil/src/auth/models/user_register_request/user_register_request.dart';
import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'authentication_service.g.dart';

@RestApi()
abstract class AuthenticationService {
  factory AuthenticationService(Dio dio, {String baseUrl}) = _AuthenticationService;

  @POST('/api/Auth/Login')
  Future<ApiResponse<AuthenticationResponse>> authenticate(
    @Body() AuthenticationRequest request,
  );

  @POST('/users/validate-token')
  Future<ApiResponse<AuthenticationResponse>> validateToken(
    @Body() TokenRequest request,
  );

  @POST('/api/Auth/Create/user')
  Future<ApiResponse<UserAuthentication>> register(
    @Body() UserRegisterRequest request,
  );

  @POST('/users/logout')
  Future<ApiResponse<AuthenticationResponse>> logout(
    @Body() TokenRequest request,
  );
}
