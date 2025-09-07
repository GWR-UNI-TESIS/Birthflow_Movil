import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener registros de presentación/posición/variedad.
abstract class GetPresentationPositionVarietyUseCase {
  /// Retorna la lista para el [partographId] indicado.
  Future<List<PresentationPositionVariety>?> execute({
    required String partographId,
  });
}

/// Implementación que delega en el repositorio de partograma.
class GetPresentationPositionVarietyUseCaseImplementation
    implements GetPresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;

  GetPresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<PresentationPositionVariety>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getPresentationPositionVariety(
      partographId: partographId,
    );
  }
}
