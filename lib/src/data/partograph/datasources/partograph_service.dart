import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/alert_curve_response/alert_curves_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_request/cervical_dilation_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/childbirth_note_request/childbirth_note_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/childbirth_note_response/childbirth_note_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_request/contraction_frequency_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/contraction_frequency_response/contraction_frequency_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_request/fetal_heart_rate_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/fetal_heart_rate_response/fetal_heart_rate_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_request/medical_surveillance_table_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_list_response/partograph_list_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_state_request/partograph_state_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_state_response/partograph_state_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_request/presentation_position_variety_entity_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/presentation_position_variety_response/presentation_position_variety_entity_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/search_model_request/search_model_request.dart';

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

  @POST('/api/partograph/create')
  Future<ApiResponse<PartographResponse>> create(
    @Header('Authorization') String token,
    @Body() PartographRequest request,
  );

  @PATCH('/api/partograph/update')
  Future<ApiResponse<PartographResponse>> updatePartograph(
    @Header('Authorization') String token,
    @Body() PartographRequest request,
  );

  @DELETE('/api/partograph/delete/{partograph}')
  Future<ApiResponse<PartographResponse>> deletePartograph(
    @Header('Authorization') String token,
    @Path() String partographId,
  );

  @POST('/api/partograph/search')
  Future<ApiResponse<List<PartographListResponse>>> searchPartographs(
    @Header('Authorization') String token,
    @Body() SearchModelRequest request,
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

  @PATCH('/api/partograph/update/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> updateCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  @DELETE('/api/partograph/delete/cervical-dilation')
  Future<ApiResponse<CervicalDilationResponse>> deleteCervicalDilation(
    @Header('Authorization') String token,
    @Body() CervicalDilationRequest request,
  );

  // Endpoints de tabla
  @GET('/api/partograph/medical-surveillance-table/partograph/{parthographId}')
  Future<ApiResponse<List<MedicalSurveillanceTableResponse>>>
      getMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      createMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );

  @PATCH('/api/partograph/update/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      updateMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );

  @DELETE('/api/partograph/delete/medical-surveillance-table')
  Future<ApiResponse<MedicalSurveillanceTableResponse>>
      deleteMedicalSurveillanceTable(
    @Header('Authorization') String token,
    @Body() MedicalSurveillanceTableRequest request,
  );

  // Endpoints de vvp
  @GET(
    '/api/partograph/presentation-position-variety/partograph/{parthographId}',
  )
  Future<ApiResponse<List<PresentationPositionVarietyEntityResponse>>>
      getPresentationPositionVariety(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      createPresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @PATCH('/api/partograph/update/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      updatePresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @DELETE('/api/partograph/delete/presentation-position-variety')
  Future<ApiResponse<PresentationPositionVarietyEntityResponse>>
      deletePresentationPositionVariety(
    @Header('Authorization') String token,
    @Body() PresentationPositionVarietyEntityRequest request,
  );

  @GET('/api/partograph/contraction-frequency/partograph/{partographId}')
  Future<ApiResponse<List<ContractionFrequencyResponse>>>
      getContractionFrequency(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/contraction-frequency')
  Future<ApiResponse<ContractionFrequencyResponse>> createContractionFrequency(
    @Header('Authorization') String token,
    @Body() ContractionFrequencyRequest request,
  );

  @PATCH('/api/partograph/update/contraction-frequency')
  Future<ApiResponse<ContractionFrequencyResponse>> updateContractionFrequency(
    @Header('Authorization') String token,
    @Body() ContractionFrequencyRequest request,
  );

  @DELETE('/api/partograph/delete/contraction-frequency')
  Future<ApiResponse<ContractionFrequencyResponse>> deleteContractionFrequency(
    @Header('Authorization') String token,
    @Body() ContractionFrequencyRequest request,
  );

  @GET('/api/partograph/fetal-heart-rate/partograph/{partographId}')
  Future<ApiResponse<List<FetalHeartRateResponse>>> getFetalHeartRate(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );

  @POST('/api/partograph/create/fetal-heart-rate')
  Future<ApiResponse<FetalHeartRateResponse>> createFetalHeartRate(
    @Header('Authorization') String token,
    @Body() FetalHeartRateRequest request,
  );

  @PATCH('/api/partograph/update/fetal-heart-rate')
  Future<ApiResponse<FetalHeartRateResponse>> updateFetalHeartRate(
    @Header('Authorization') String token,
    @Body() FetalHeartRateRequest request,
  );

  @DELETE('/api/partograph/delete/fetal-heart-rate')
  Future<ApiResponse<FetalHeartRateResponse>> deleteFetalHeartRate(
    @Header('Authorization') String token,
    @Body() FetalHeartRateRequest request,
  );

  @POST('/api/partograph/create/childbirth-note')
  Future<ApiResponse<ChildbirthNoteResponse>> createChildBirthNote(
    @Header('Authorization') String token,
    @Body() ChildbirthNoteRequest request,
  );

  @PATCH('/api/partograph/update/childbirth-note')
  Future<ApiResponse<ChildbirthNoteResponse>> updateChildBirthNote(
    @Header('Authorization') String token,
    @Body() ChildbirthNoteRequest request,
  );

  @PATCH('/api/partograph/update/state')
  Future<ApiResponse<PartographStateResponse>> updatePartographState(
    @Header('Authorization') String token,
    @Body() PartographStateRequest request,
  );

  @GET('/api/partograph/curve/{partographId}')
  Future<ApiResponse<AlertCurvesResponse>> getCurves(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );
}
