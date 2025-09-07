import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: buscar usuarios/grupos por texto.
abstract class GetSearchUserGroupUseCase {
  /// Ejecuta la búsqueda con el término [query].
  Future<List<SearchUserGroup>?> execute({
    required String query,
  });
}

/// Implementación que delega en el repositorio de compartición.
class GetSearchUserGroupUseCaseImplementation implements GetSearchUserGroupUseCase {
  final ShareRepository _shareRepository;

  GetSearchUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<SearchUserGroup>?> execute({
    required String query,
  }) async {
    return await _shareRepository.getSearchUserGroup(query: query);
  }
}
