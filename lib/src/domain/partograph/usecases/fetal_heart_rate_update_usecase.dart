import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar un registro de FCF (frecuencia cardiaca fetal).
abstract class UpdateFetalHeartRateUseCase {
  /// Actualiza el registro y retorna el resultado.
  Future<FetalHeartRate?> execute({
    required int id,            // id del registro a actualizar
    required String partographId, // id del partograma
    required String value,      // nuevo valor de FCF
    required DateTime time,     // nueva hora del registro
  });
}

/// Implementación que delega en el PartographRepository.
class UpdateFetalHeartRateUseCaseImplementation
    implements UpdateFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  UpdateFetalHeartRateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la actualización al repositorio.
  Future<FetalHeartRate?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.updateFetalHeartRate(
      id: id,
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
