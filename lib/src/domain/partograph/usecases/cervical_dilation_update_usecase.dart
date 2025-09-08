import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar un registro de dilatación cervical.
abstract class UpdateCervicalDilationUseCase {
  /// Ejecuta la actualización y retorna el registro actualizado.
  Future<CervicalDilation?> execute({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });
}

/// Implementación que delega en el PartographRepository.
class UpdateCervicalDilationUseCaseImplementation
    implements UpdateCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  UpdateCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la actualización del registro al repositorio.
  Future<CervicalDilation?> execute({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    return await _partographRepository.updateCervicalDilation(
      id: id,
      partographId: partographId,
      value: value,
      hour: hour,
      remOrRam: remOrRam,
    );
  }
}
