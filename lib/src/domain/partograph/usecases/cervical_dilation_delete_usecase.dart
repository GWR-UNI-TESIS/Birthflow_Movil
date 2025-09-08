import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar un registro de dilatación cervical por su ID.
abstract class DeleteCervicalDilationUseCase {
  /// Ejecuta la eliminación y retorna el registro eliminado (si aplica).
  Future<CervicalDilation?> execute({
    required int id,
  });
}

/// Implementación que delega la operación al PartographRepository.
class DeleteCervicalDilationUseCaseImplementation
    implements DeleteCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  DeleteCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega en el repositorio la eliminación por ID.
  Future<CervicalDilation?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteCervicalDilation(
      id: id,
    );
  }
}
