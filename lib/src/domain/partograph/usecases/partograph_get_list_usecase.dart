import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener la lista de partogramas visibles para un usuario.
abstract class GetPartographListUseCase {
  /// Retorna los partogramas del usuario [userId].
  Future<List<PartographList>?> execute({
    required String userId,
  });
}

/// Implementación que delega en el repositorio de partograma.
class GetPartographListUseCaseImplementation
    implements GetPartographListUseCase {
  final PartographRepository _partographRepository;

  GetPartographListUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Consulta al repositorio usando [userId].
  Future<List<PartographList>?> execute({
    required String userId,
  }) async {
    return await _partographRepository.getPartographs(
      userId: userId,
    );
  }
}
