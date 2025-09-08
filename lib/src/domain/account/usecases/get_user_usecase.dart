import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

/// Caso de uso: obtener el usuario actual (perfil en sesión).
abstract class GetUserUseCase {
  /// Retorna el usuario actual o null si no hay sesión.
  Future<User?> execute();
}

/// Implementación que delega en AccountRepository (inyección de dependencias).
class GetUserUseCaseImplementation implements GetUserUseCase {
  final AccountRepository _accountRepository;

  GetUserUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  /// Delega la obtención del usuario al repositorio.
  Future<User?> execute() async {
    return await _accountRepository.getUser();
  }
}
