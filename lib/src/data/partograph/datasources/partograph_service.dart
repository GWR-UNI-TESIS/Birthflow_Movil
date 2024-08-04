import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_request/cervical_dilation_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'partograph_service.g.dart';

@RestApi()
abstract class PartographService {
  factory PartographService(Dio dio, {String baseUrl}) = _PartographService;

  @GET('/api/Partograph/Get/partograph/{userId}')
  Future<ApiResponse<List<PartographResponse>>> get(
    @Header('Authorization') String token,
    @Path('userId') String id,
  );

  @POST('/api/Partograph/Create/partograph')
  Future<ApiResponse<PartographResponse>> create(
    @Header('Authorization') String token,
    @Body() PartographRequest request,
  );

  // Endpoints de dilataciones cervicales
  @GET('/api/Partograph/Get/cervical-dilation/{partographId}')
  Future<ApiResponse<List<CervicalDilationResponse>>> getCervicalDilation(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/Partograph/Create/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> createCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  @PUT('/api/Partograph/Update/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> updateCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  @PUT('/api/Partograph/Delete/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> deleteCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );
}
