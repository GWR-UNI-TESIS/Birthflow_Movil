import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: crear un grupo.
abstract class CreateGroupUseCase {
  /// Crea un grupo con [name] y retorna el resultado.
  Future<Group?> execute({
    required String name,
  });
}

/// Implementación que delega en ShareRepository.
class CreateGroupUseCaseImplementation implements CreateGroupUseCase {
  final ShareRepository _shareRepository;

  CreateGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required String name,
  }) async {
    // Delegación directa al repositorio.
    return await _shareRepository.createGroup(name: name);
  }
}
