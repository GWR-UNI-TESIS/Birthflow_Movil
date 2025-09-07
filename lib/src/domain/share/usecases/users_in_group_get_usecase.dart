import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: obtener usuarios que pertenecen a un grupo.
abstract class GetUsersInGroupUseCase {
  /// Retorna la lista de usuarios para [groupId].
  Future<List<User>?> execute({
    required int groupId,
  });
}

/// Implementación que delega en el ShareRepository.
class GetUsersInGroupUseCaseImplementation implements GetUsersInGroupUseCase {
  final ShareRepository _shareRepository;

  GetUsersInGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<User>?> execute({
    required int groupId,
  }) async {
    // Delegación directa al repositorio.
    return await _shareRepository.getUsersInGroup(groupId: groupId);
  }
}
