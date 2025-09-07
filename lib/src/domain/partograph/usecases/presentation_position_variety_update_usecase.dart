import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar un registro de presentación/posición/variedad.
abstract class UpdatePresentationPositionVarietyUseCase {
  /// Actualiza el registro identificado por [id] y retorna el resultado.
  Future<PresentationPositionVariety?> execute({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  });
}

/// Implementación que delega en el PartographRepository.
class UpdatePresentationPositionVarietyUseCaseImplementation
    implements UpdatePresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;

  UpdatePresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delegación directa al repositorio.
  Future<PresentationPositionVariety?> execute({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    return await _partographRepository.updatePresentationPositionVariety(
      id: id,
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
    );
  }
}
