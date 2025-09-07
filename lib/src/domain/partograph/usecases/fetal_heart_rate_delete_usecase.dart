import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar un registro de FCF por ID.
abstract class DeleteFetalHeartRateUseCase {
  /// Ejecuta la eliminación y retorna el registro eliminado (si aplica).
  Future<FetalHeartRate?> execute({
    required int id,
  });
}

/// Implementación que delega en el repositorio de partograma.
class DeleteFetalHeartRateUseCaseImplementation
    implements DeleteFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  DeleteFetalHeartRateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<FetalHeartRate?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteFetalHeartRate(
      id: id,
    );
  }
}
