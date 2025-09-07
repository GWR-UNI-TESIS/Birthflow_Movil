import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

/// Caso de uso: cambio de contraseña.
/// Expone la operación que el UI/Bloc puede invocar.
abstract class ChangePasswordUseCase {
  /// Ejecuta el cambio de contraseña con la clave actual y la nueva.
  /// Retorna un mensaje/confirmación del proceso.
  Future<String> execute({
    required String newPassword,
    required String oldPassword,
  });
}

/// Implementación del caso de uso usando el repositorio de cuenta.
/// Orquesta la llamada al repositorio (inyección de dependencias).
class ChangePasswordUseCaseImplementation implements ChangePasswordUseCase {
  final AccountRepository _accountRepository;

  /// Recibe el repositorio que realizará la operación real (infra/datos).
  ChangePasswordUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  /// Delega en el repositorio el cambio de contraseña.
  Future<String> execute({
    required String newPassword,
    required String oldPassword,
  }) async {
    return await _accountRepository.changePassword(
      mewPassword: newPassword, // nota: el repositorio espera 'mewPassword'
      oldPassword: oldPassword,
    );
  }
}
