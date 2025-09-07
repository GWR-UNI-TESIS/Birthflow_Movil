import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar un partograma por su ID.
abstract class DeletePartographUseCase {
  /// Ejecuta la eliminación y retorna el partograma resultante (según implementación).
  Future<Partograph> execute({
    required String partographId,
  });
}

/// Implementación que delega la eliminación al PartographRepository.
class DeletePartographUseCaseImplementation implements DeletePartographUseCase {
  final PartographRepository _partographRepository;

  DeletePartographUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la operación de borrado en el repositorio.
  Future<Partograph> execute({
    required String partographId,
  }) async {
    return await _partographRepository.deletePartograph(
      partographId: partographId,
    );
  }
}
