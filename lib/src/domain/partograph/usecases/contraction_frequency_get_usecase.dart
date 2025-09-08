import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener la lista de frecuencias de contracciones de un partograma.
abstract class GetContractionFrequencyUseCase {
  /// Retorna las frecuencias para [partographId].
  /// Nota: los parámetros [id], [value] y [time] no se usan en la consulta (solo se requiere el partographId).
  Future<List<ContractionFrequency>?> execute({
    required int id,              // no usado en esta operación
    required String partographId, // identificador del partograma
    required String value,        // no usado en esta operación
    required DateTime time,       // no usado en esta operación
  });
}

/// Implementación que delega en el repositorio de partograma.
class GetContractionFrequencyUseCaseImplementation
    implements GetContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  GetContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la obtención al repositorio (solo utiliza [partographId]).
  Future<List<ContractionFrequency>?> execute({
    required int id,            // no usado
    required String partographId,
    required String value,      // no usado
    required DateTime time,     // no usado
  }) async {
    return await _partographRepository.getContractionFrequency(
      partographId: partographId,
    );
  }
}
