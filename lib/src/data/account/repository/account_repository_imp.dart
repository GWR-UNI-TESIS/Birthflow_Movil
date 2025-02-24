import 'package:birthflow_movil/src/data/account/datasources/account_service.dart';
import 'package:birthflow_movil/src/data/account/models/change_password_request/change_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/forgot_password_request/forgot_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/reset_password_request/reset_password_request.dart';
import 'package:birthflow_movil/src/data/account/models/user_info_request/user_info_request.dart';
import 'package:birthflow_movil/src/data/account/models/validate_otp_request/validate_otp_request.dart';
import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/data/share/mappers/mapper.dart';
import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class AccountRepositoryImplementation implements AccountRepository {
  final AccountService _accountService;
  final TokenStorage _tokenStorage = TokenStorage();
  final Logger _logger = Logger();
  final ShareApiMapper _mapper = ShareApiMapper();

  AccountRepositoryImplementation({required AccountService accountService})
      : _accountService = accountService;

  @override
  Future<String> changePassword({
    required String mewPassword,
    required String oldPassword,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = ChangePasswordRequest(
        mewPassword: mewPassword,
        oldPassword: oldPassword,
      );

      final result = await _accountService.changePassword(token, request);

      return result.response!;
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<User?> getUser() async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _accountService.getUser(token);

      return _mapper.convert<UserAuthentication, User>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<Result?> requestResetCode({required String email}) async {
    try {
      final request = ForgotPasswordRequest(email: email);

      final result = await _accountService.requestResetCode(request);

      final user = _mapper.convert<UserAuthentication, User>(result.response);

      return Result(user: user, message: result.message);
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<String> resetPassword({
    required String userId,
    required String otpCode,
    required String newPassword,
  }) async {
    try {
      final request = ResetPasswordRequest(
        userId: userId,
        otpCode: otpCode,
        newPassword: newPassword,
      );

      final result = await _accountService.resetPassword(request);

      return result.response!;
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      return 'error';
    }
  }

  @override
  Future<String> validateOtp({
    required String userId,
    required String otpCode,
  }) async {
    try {
      final request = ValidateOtpRequest(userId: userId, otpCode: otpCode);

      final result = await _accountService.validateOtp(request);

      return result.response!;
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      return 'error';
    }
  }

  @override
  Future<UserAuthentication?> changeUserInfo({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';
      final request = UserInfoRequest(
        id: id,
        name: name,
        secondName: secondName,
        userName: userName,
        email: email,
        phoneNumber: phoneNumber,
      );

      final result = await _accountService.changeUserInfo(request, token);

      return result.response!;
    } catch (e, stackTrace) {
      _logger.e('Account exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }
}
