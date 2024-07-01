import 'package:birthflow_movil/src/core/models/reponse/api_response.dart';
import 'package:birthflow_movil/src/data/partograma/models/partograma_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'partograma_service.g.dart';

@RestApi()
abstract class PartogramaService {
  factory PartogramaService(Dio dio, {String baseUrl}) = _PartogramaService;

  @GET('/partogramas')
  Future<ApiResponse<List<PartogramaResponse>>> get(
    @Header('Authorization') String token,
    @Query('id') String id);
}
