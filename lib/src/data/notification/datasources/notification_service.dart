import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/notification/models/notification_response/notification_response.dart';
import 'package:birthflow_movil/src/data/notification/models/register_token_request/register_token_request.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'notification_service.g.dart';

@RestApi()
abstract class NotificationService {
  factory NotificationService(Dio dio, {String baseUrl}) = _NotificationService;

  @POST('/api/notification/register-device')
  Future<ApiResponse<String>> registerDeviceToken(
    @Header('Authorization') String token,
    @Body() RegisterTokenRequest body,
  );

  @GET('/api/notification/notifications')
  Future<ApiResponse<List<NotificationResponse>>> getNotifications(
    @Header('Authorization') String token,
  );
}
