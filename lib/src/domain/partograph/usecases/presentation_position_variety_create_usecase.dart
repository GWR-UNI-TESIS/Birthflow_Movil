import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear un registro de presentación/posición/variedad.
abstract class CreatePresentationPositionVarietyUseCase {
  /// Crea el registro para el partograma indicado.
  Future<PresentationPositionVariety?> execute({
    required String partographId, // id del partograma
    required int hodgePlane,      // plano de Hodge
    required int position,        // posición/presentación
    required DateTime time,       // hora del registro
  });
}

/// Implementación que delega en el repositorio de partograma.
class CreatePresentationPositionVarietyUseCaseImplementation
    implements CreatePresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;

  CreatePresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<PresentationPositionVariety?> execute({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    // Delegación directa al repositorio.
    return await _partographRepository.createPresentationPositionVariety(
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
    );
  }
}
