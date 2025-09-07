import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar un registro de frecuencia de contracciones.
abstract class UpdateContractionFrequencyUseCase {
  /// Actualiza el registro y retorna el resultado.
  Future<ContractionFrequency?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

/// Implementación que delega en el PartographRepository.
class UpdateContractionFrequencyUseCaseImplementation
    implements UpdateContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  UpdateContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<ContractionFrequency?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    // Delegación directa al repositorio.
    return await _partographRepository.updateContractionFrequency(
      id: id,
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
