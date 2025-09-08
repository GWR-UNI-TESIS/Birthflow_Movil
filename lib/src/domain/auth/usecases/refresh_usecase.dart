import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

/// Caso de uso: renovar credenciales (refresh token).
abstract class RefreshUsecase {
  /// Ejecuta la renovación y retorna las nuevas credenciales.
  Future<Authentication> execute();
}

/// Implementación que delega la renovación al repositorio de autenticación.
class RefreshUsecaseImplementation implements RefreshUsecase {
  final AuthenticationRepository _authRepository;

  RefreshUsecaseImplementation(this._authRepository);

  @override
  Future<Authentication> execute() async {
    return await _authRepository.refresh();
  }
}
