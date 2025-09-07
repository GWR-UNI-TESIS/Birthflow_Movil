import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear un registro de frecuencia de contracciones.
abstract class CreateContractionFrequencyUseCase {
  /// Crea el registro para el partograma indicado.
  Future<ContractionFrequency?> execute({
    required String partographId,
    required String value,   // frecuencia (p. ej., "3 en 10 min")
    required DateTime time,  // hora del registro
  });
}

/// Implementación que delega en el repositorio de partograma.
class CreateContractionFrequencyUseCaseImplementation
    implements CreateContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  CreateContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la creación al repositorio.
  Future<ContractionFrequency?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.createContractionFrequency(
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
