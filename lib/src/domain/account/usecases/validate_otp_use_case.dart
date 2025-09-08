import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

/// Caso de uso: validar el código OTP (verificación/recuperación).
abstract class ValidateOtpUseCase {
  /// Valida el OTP para el usuario indicado y retorna un mensaje/confirmación.
  Future<String> execute({
    required String userId,
    required String otpCode,
  });
}

/// Implementación que delega la validación al AccountRepository.
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
    // Delegación directa al repositorio.
    return await _accountRepository.validateOtp(
      userId: userId,
      otpCode: otpCode,
    );
  }
}
