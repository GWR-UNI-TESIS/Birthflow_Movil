import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/catalog/models/catalog_response/catalog_response.dart';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @GET('/api/catalog')
  Future<ApiResponse<CatalogResponse>> getCatalog();
}
