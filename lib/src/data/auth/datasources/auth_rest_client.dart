import 'package:birthflow_movil/src/data/auth/models/user_auth_request.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'auth_rest_client.g.dart';

@RestApi()
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio, {String baseUrl}) = _AuthRestClient;
  
  @GET('/login')
  Future<String> login();

  @POST('/register')
  Future<String> post(@Body() UserAuthRequest userAuthRequest);
}
