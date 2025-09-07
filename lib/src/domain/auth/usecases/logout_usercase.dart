import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

/// Caso de uso: cerrar sesión.
abstract class LogoutUsecase {
  /// Ejecuta el logout (según la implementación limpiará credenciales, etc.).
  Future<void> execute();
}

/// Implementación que delega el logout al repositorio de autenticación.
class LogoutUsecaseImplementation implements LogoutUsecase {
  final AuthenticationRepository _authRepository;

  LogoutUsecaseImplementation(this._authRepository);

  @override
  /// Delegación directa al repositorio.
  Future<void> execute() async {
    return await _authRepository.logout();
  }
}
