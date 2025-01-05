import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

abstract class ResetPasswordUseCase {
  Future<String> execute({
    required String userId,
    required String otpCode,
    required String newPassword,
  });
}

class ResetPasswordUseCaseImplementation implements ResetPasswordUseCase {
  final AccountRepository _accountRepository;

  ResetPasswordUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<String> execute({
    required String userId,
    required String otpCode,
    required String newPassword,
  }) async {
    return await _accountRepository.resetPassword(
      userId: userId,
      otpCode: otpCode,
      newPassword: newPassword,
    );
  }
}