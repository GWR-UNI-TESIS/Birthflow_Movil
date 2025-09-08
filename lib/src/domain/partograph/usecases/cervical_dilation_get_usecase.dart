import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener la lista de registros de dilatación cervical de un partograma.
abstract class GetCervicalDilationUseCase {
  /// Retorna los registros de dilatación para [partographId].
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  });
}

/// Implementación que delega en el PartographRepository.
class GetCervicalDilationUseCaseImplementation
    implements GetCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  GetCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la consulta al repositorio.
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCervicalDilation(
      partographId: partographId,
    );
  }
}
