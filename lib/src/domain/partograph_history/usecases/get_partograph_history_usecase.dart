import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/domain/partograph_history/repositories/partograph_history_repository.dart';

/// Caso de uso: obtener el historial (versiones) de un partograma.
abstract class GetPartographHistoryUsecase {
  /// Retorna la lista de versiones para [partographId].
  Future<List<PartographVersion>> execute({required String partographId});
}

/// Implementación que delega en el repositorio de historial.
class GetPartographHistoryUsecaseImplementation
    implements GetPartographHistoryUsecase {
  final PartographHistoryRepository _partographHistoryRepository;

  GetPartographHistoryUsecaseImplementation({
    required PartographHistoryRepository partographHistoryRepository,
  }) : _partographHistoryRepository = partographHistoryRepository;

  @override
  /// Delega la consulta al repositorio.
  Future<List<PartographVersion>> execute({
    required String partographId,
  }) async {
    return await _partographHistoryRepository.get(partographId: partographId);
  }
}
