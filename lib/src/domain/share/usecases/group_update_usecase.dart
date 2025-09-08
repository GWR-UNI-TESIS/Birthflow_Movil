import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: actualizar un grupo (p. ej., cambiar el nombre).
abstract class UpdateGroupUseCase {
  /// Actualiza el grupo [id] con el nuevo [name].
  Future<Group?> execute({
    required int id,
    required String name,
  });
}

/// Implementación que delega en el ShareRepository.
class UpdateGroupUseCaseImplementation implements UpdateGroupUseCase {
  final ShareRepository _shareRepository;

  UpdateGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required int id,
    required String name,
  }) async {
    // Delegación directa al repositorio.
    return await _shareRepository.updateGroup(
      id: id,
      name: name,
    );
  }
}
