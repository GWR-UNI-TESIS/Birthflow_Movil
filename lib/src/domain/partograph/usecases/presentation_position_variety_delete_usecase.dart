import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar un registro de presentación/posición/variedad.
abstract class DeletePresentationPositionVarietyUseCase {
  /// Elimina por [id] y retorna el registro eliminado (si aplica).
  Future<PresentationPositionVariety?> execute({
    required int id,
  });
}

/// Implementación que delega en el repositorio de partograma.
class DeletePresentationPositionVarietyUseCaseImplementation
    implements DeletePresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;

  DeletePresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delegación directa al repositorio.
  Future<PresentationPositionVariety?> execute({
    required int id,
  }) async {
    return await _partographRepository.deletePresentationPositionVariety(
      id: id,
    );
  }
}
