import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear un registro de FCF (frecuencia cardiaca fetal).
abstract class CreateFetalHeartRateUseCase {
  /// Crea el registro para el partograma indicado.
  Future<FetalHeartRate?> execute({
    required String partographId, // id del partograma
    required String value,        // valor FCF (p. ej., "140")
    required DateTime time,       // hora del registro
  });
}

/// Implementación que delega en el PartographRepository.
class CreateFetalHeartRateUseCaseImplementation
    implements CreateFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  CreateFetalHeartRateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la creación del registro de FCF al repositorio.
  Future<FetalHeartRate?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.createFetalHeartRate(
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
