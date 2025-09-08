import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener un partograma por su ID.
abstract class GetPartographUseCase {
  /// Retorna el partograma correspondiente a [partographId].
  Future<Partograph> execute({
    required String partographId,
  });
}

/// Implementación que delega la consulta en el PartographRepository.
class GetPartographUseCaseImplementation implements GetPartographUseCase {
  final PartographRepository _partographRepository;

  GetPartographUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega en el repositorio la obtención del partograma.
  Future<Partograph> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getPartograph(
      partographId: partographId,
    );
  }
}
