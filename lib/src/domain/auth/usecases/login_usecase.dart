import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

/// Caso de uso: iniciar sesión y obtener credenciales (tokens/usuario).
abstract class LoginUsecase {
  /// Ejecuta el login con usuario y contraseña.
  Future<Authentication> execute({
    required String username,
    required String password,
  });
}

/// Implementación que delega el login al AuthenticationRepository.
class LoginUsecaseImplementation implements LoginUsecase {
  final AuthenticationRepository _authRepository;

  LoginUsecaseImplementation(this._authRepository);

  @override
  /// Delega en el repositorio la autenticación y retorna Authentication.
  Future<Authentication> execute({
    required String username,
    required String password,
  }) async {
    return await _authRepository.login(
      username: username,
      password: password,
    );
  }
}
