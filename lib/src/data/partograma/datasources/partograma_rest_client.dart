
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'partograma_rest_client.g.dart';

@RestApi()
abstract class PartogramaRestClient {
  factory PartogramaRestClient(Dio dio, {String baseUrl}) = _PartogramaRestClient;
  
  @GET('/login')
  Future<String> get();


}
