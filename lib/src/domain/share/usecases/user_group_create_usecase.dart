import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: agregar un usuario a un grupo.
abstract class CreateUserGroupUseCase {
  /// Agrega [userId] al grupo [groupId].
  Future<void> execute({
    required String userId,
    required int groupId,
  });
}

/// Implementación que delega en [ShareRepository].
class CreateUserGroupUseCaseImplementation implements CreateUserGroupUseCase {
  final ShareRepository _shareRepository;

  CreateUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<void> execute({
    required String userId,
    required int groupId,
  }) async {
    // Delegación directa al repositorio.
    await _shareRepository.createUserGroup(
      userId: userId,
      groupId: groupId,
    );
  }
}
