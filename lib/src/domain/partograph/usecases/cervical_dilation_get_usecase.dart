import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetCervicalDilationUseCase {
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  });
}

class GetCervicalDilationUseCaseImplementation
    implements GetCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  GetCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<CervicalDilation>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCervicalDilation(
      partographId: partographId,
    );
  }
}
