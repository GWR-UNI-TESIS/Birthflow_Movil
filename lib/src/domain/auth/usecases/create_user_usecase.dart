import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';

/// Caso de uso: registro de usuario (capa dominio).
abstract class CreateUserUsecase {
  /// Expone la operación para crear un usuario y devolver un mensaje/confirmación.
  Future<String> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    String  phoneNumber, // Nota: en el repositorio se maneja como opcional/null.
  });
}

/// Implementación que delega en AuthenticationRepository (inyección de dependencias).
class CreateUserUsecaseImplementation implements CreateUserUsecase {
  final AuthenticationRepository _authRepository;

  CreateUserUsecaseImplementation(this._authRepository);

  @override
  /// Delega el registro al repositorio de autenticación.
  Future<String> execute({
    required String name,
    required String secondName,
    required String email,
    required String userName,
    String ? phoneNumber, // Aquí se admite null según contrato del repositorio.
  }) async {
    return await _authRepository.registerUser(
      name: name,
      secondName: secondName,
      email: email,
      userName: userName,
      phoneNumber: phoneNumber,
    );
  }
}
