import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

abstract class ValidateOtpUseCase {
  Future<String> execute({
    required String userId,
    required String otpCode,
  });
}

class ValidateOtpUseCaseImplementation implements ValidateOtpUseCase {
  final AccountRepository _accountRepository;

  ValidateOtpUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<String> execute({
    required String userId,
    required String otpCode,
  }) async {
    return await _accountRepository.validateOtp(
      userId: userId,
      otpCode: otpCode,
    );
  }
}