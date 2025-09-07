import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: obtener la lista de grupos.
abstract class GetGroupsUseCase {
  /// Retorna todos los grupos disponibles.
  Future<List<Group>?> execute();
}

/// Implementación que delega en el ShareRepository.
class GetGroupsUseCaseImplementation implements GetGroupsUseCase {
  final ShareRepository _shareRepository;

  GetGroupsUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<Group>?> execute() async {
    return await _shareRepository.getGroups();
  }
}
