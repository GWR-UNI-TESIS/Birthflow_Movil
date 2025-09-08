import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear un registro de dilatación cervical en un partograma.
abstract class CreateCervicalDilationUseCase {
  /// Crea el registro con valor, hora y estado de membranas (REM/RAM).
  Future<CervicalDilation?> execute({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });
}

/// Implementación que delega en el PartographRepository.
class CreateCervicalDilationUseCaseImplementation
    implements CreateCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  CreateCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la creación del registro al repositorio.
  Future<CervicalDilation?> execute({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    return await _partographRepository.createCervicalDilation(
      partographId: partographId,
      value: value,
      hour: hour,
      remOrRam: remOrRam,
    );
  }
}
