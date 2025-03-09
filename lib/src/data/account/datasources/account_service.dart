import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/account/models/change_password_request/change_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/forgot_password_request/forgot_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/reset_password_request/reset_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/user_info_request/user_info_request.dart';
import 'package:birthflow_movil/src/data/account/models/validate_otp_request/validate_otp_request.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'account_service.g.dart';

@RestApi()
abstract class AccountService {
  factory AccountService(Dio dio, {String baseUrl}) = _AccountService;

  @POST('/api/account/change-password')
  Future<ApiResponse<String>> changePassword(
    @Header('Authorization') String token,
    @Body() ChangePasswordRequest request,
  );
  @POST('/api/account/request-reset-code')
  Future<ApiResponse<UserAuthentication>> requestResetCode(
    @Body() ForgotPasswordRequest request,
  );

  @POST('/api/account/validate-otp-code')
  Future<ApiResponse<String>> validateOtp(
    @Body() ValidateOtpRequest request,
  );

  @POST('/api/account/reset-password')
  Future<ApiResponse<String>> resetPassword(
    @Body() ResetPasswordRequest request,
  );

  @POST('/api/account/change-user-info')
  Future<ApiResponse<UserAuthentication>> changeUserInfo(
    @Body() UserInfoRequest request,
    @Header('Authorization') String token,
  );

  @GET('/api/account/me')
  Future<ApiResponse<UserAuthentication>> getUser(
    @Header('Authorization') String token,
  );
}
