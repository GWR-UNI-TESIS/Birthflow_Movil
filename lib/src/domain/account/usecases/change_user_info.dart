import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';

/// Caso de uso: actualizar datos de perfil del usuario.
abstract class ChangeUserInfoUseCase {
  /// Ejecuta la actualización de nombre(s), username, email y teléfono.
  /// Retorna el usuario autenticado actualizado.
  Future<UserAuthentication?> execute({
    required String? id,       // puede venir null si se usa el usuario actual
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  });
}

/// Implementación que delega en AccountRepository (inyección de dependencias).
class ChangeUserInfoUseCaseImplementation implements ChangeUserInfoUseCase {
  final AccountRepository _accountRepository;

  ChangeUserInfoUseCaseImplementation({
    required AccountRepository accountRepository,
  }) : _accountRepository = accountRepository;

  @override
  /// Delega la actualización de perfil al repositorio.
  Future<UserAuthentication?> execute({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  }) async {
    return await _accountRepository.changeUserInfo(
      id: id,
      name: name,
      secondName: secondName,
      userName: userName,
      email: email,
      phoneNumber: phoneNumber,
    );
  }
}
