
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part 'report_service.g.dart';

@RestApi()
abstract class ReportService {
  factory ReportService(Dio dio, {String baseUrl}) = _ReportService;

  @GET('/api/report/generate-partograph-image/{partographId}')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> obtenerPdfPartograma(
    @Header('Authorization') String token,
    @Path('partographId') String partographId,
  );
}
