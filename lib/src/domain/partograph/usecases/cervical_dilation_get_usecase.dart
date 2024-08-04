import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CervicalDilationGetUseCase {
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  });
}

class CervicalDilationGetUseCaseImplementation
    implements CervicalDilationGetUseCase {
  final PartographRepository _partographRepository;

  CervicalDilationGetUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCervicalDilation(
      partographId: partographId,
    );
  }
}
