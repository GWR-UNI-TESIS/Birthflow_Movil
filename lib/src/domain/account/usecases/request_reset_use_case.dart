import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

/// Caso de uso: solicitar el código de restablecimiento de contraseña al email indicado.
abstract class RequestResetCodeUseCase {
  /// Ejecuta la solicitud; retorna datos del usuario y un mensaje si aplica.
  Future<Result?> execute({
    required String email,
  });
}

/// Implementación que delega la operación al AccountRepository (inyección de dependencias).
class RequestResetCodeUseCaseImplementation implements RequestResetCodeUseCase {
  final AccountRepository _accountRepository;

  RequestResetCodeUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  Future<Result?> execute({
    required String email,
  }) async {
    return await _accountRepository.requestResetCode(email: email);
  }
}

/// Resultado de la solicitud de restablecimiento (para UI/mensajería).
class Result {
  final User user;      // Usuario asociado a la solicitud
  final String message; // Mensaje de confirmación/estado

  Result({required this.user, required this.message});
}
