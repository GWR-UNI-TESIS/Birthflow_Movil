import 'package:birthflow_movil/src/domain/auth/entities/authentication.dart';

/// Contrato del repositorio de autenticación: registro, login, refresh y logout.
abstract class AuthenticationRepository {
  /// Registra un usuario nuevo. Devuelve un mensaje/confirmación.
  Future<String> registerUser({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    String ? phoneNumber,
  });

  /// Inicia sesión y devuelve las credenciales (tokens/usuario).
  Future<Authentication> login({
    required String username,
    required String password,
  });

  /// Renueva las credenciales (p. ej., access/refresh token).
  Future<Authentication> refresh();

  /// Cierra sesión y limpia credenciales persistidas.
  Future<void> logout();
}
