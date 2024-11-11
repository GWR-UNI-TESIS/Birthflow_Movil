import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_request/cervical_dilation_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_request/medical_surveillance_table_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_list_response/partograph_list_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_request/presentation_position_variety_entity_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'partograph_service.g.dart';

@RestApi()
abstract class PartographService {
  factory PartographService(Dio dio, {String baseUrl}) = _PartographService;

  @GET('/api/partograph/partographs/{userId}')
  Future<ApiResponse<List<PartographListResponse>>> get(
    @Header('Authorization') String token,
    @Path('userId') String id,
  );

  @GET('/api/partograph/partograph/{partographId}')
  Future<ApiResponse<PartographResponse>> getPartograph(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/partograph')
  Future<ApiResponse<PartographResponse>> create(
    @Header('Authorization') String token,
    @Body() PartographRequest request,
  );

  // Endpoints de dilataciones cervicales
  @GET('/api/partograph/cervical-dilation/partograph/{partographId}')
  Future<ApiResponse<List<CervicalDilationResponse>>> getCervicalDilation(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> createCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  @PUT('/api/partograph/update/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> updateCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  @PUT('/api/partograph/delete/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> deleteCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  // Endpoints de tabla
  @GET('/api/partograph/medical-surveillance-table/partograph/{parthographId}')
  Future<ApiResponse<List<MedicalSurveillanceTableResponse>>> getMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>> createMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );

  @PATCH('/api/partograph/update/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>> updateMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );

  @PUT('/api/partograph/delete/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>> deleteMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );


    // Endpoints de vvp
  @GET('/api/Partograph/Get/presentation-position-variety/{partographId}')
  Future<ApiResponse<List<PresentationPositionVarietyEntityResponse>>> getPresentationPositionVariety(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/Partograph/Create/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>> createPresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @PUT('/api/Partograph/Update/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>> updatePresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @PUT('/api/Partograph/Delete/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>> deletePresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @GET('/api/partograph/curve/{partographId}')
  Future<ApiResponse<AlertCurvesResponse>> getCurves(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );
}
