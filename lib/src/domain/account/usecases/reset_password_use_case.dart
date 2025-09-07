import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

/// Caso de uso: restablecer contraseña mediante OTP.
abstract class ResetPasswordUseCase {
  /// Ejecuta el restablecimiento y retorna un mensaje/confirmación.
  Future<String> execute({
    required String userId,
    required String otpCode,
    required String newPassword,
  });
}

/// Implementación que delega la operación en AccountRepository.
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
