import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar un registro de frecuencia de contracciones por ID.
abstract class DeleteContractionFrequencyUseCase {
  /// Ejecuta la eliminación y retorna el registro eliminado (si la implementación lo provee).
  Future<ContractionFrequency?> execute({
    required int id,
  });
}

/// Implementación que delega la operación al repositorio de partograma.
class DeleteContractionFrequencyUseCaseImplementation
    implements DeleteContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  DeleteContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega en el repositorio la eliminación por ID.
  Future<ContractionFrequency?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteContractionFrequency(
      id: id,
    );
  }
}
