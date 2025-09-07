import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: eliminar un grupo por ID.
abstract class DeleteGroupUseCase {
  /// Ejecuta la eliminación y retorna el grupo eliminado (si aplica).
  Future<Group?> execute({
    required int id,
  });
}

/// Implementación que delega en ShareRepository.
class DeleteGroupUseCaseImplementation implements DeleteGroupUseCase {
  final ShareRepository _shareRepository;

  DeleteGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required int id,
  }) async {
    // Delegación directa al repositorio.
    return await _shareRepository.deleteGroup(id: id);
  }
}
