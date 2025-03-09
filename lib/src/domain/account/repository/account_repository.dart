import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

abstract class AccountRepository {
  Future<String> changePassword({
    required String mewPassword,
    required String oldPassword,
  });

  Future<Result?> requestResetCode({required String email});

  Future<String> validateOtp({
    required String userId,
    required String otpCode,
  });

  Future<String> resetPassword({
    required String userId,
    required String otpCode,
    required String newPassword,
  });

  Future<UserAuthentication?> changeUserInfo({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  });

  Future<User?> getUser();
}
