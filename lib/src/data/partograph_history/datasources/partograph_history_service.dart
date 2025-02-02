import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/partograph_history/models/partograph_version/partograph_version_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'partograph_history_service.g.dart';

@RestApi()
abstract class PartographHistoryService {
  factory PartographHistoryService(Dio dio, {String baseUrl}) = _PartographHistoryService;

  @GET('/api/partographhistory/{partographId}')
  Future<ApiResponse<List<PartographVersionResponse>>> get(
    @Header('Authorization') String token,
    @Path('partographId') String partogrtaphId,
  );
}
