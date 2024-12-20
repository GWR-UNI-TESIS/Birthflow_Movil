import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetPartographUseCase {
  Future<Partograph> execute({
    required String partographId,
  });
}

class GetPartographUseCaseImplementation implements GetPartographUseCase {
  final PartographRepository _partographRepository;

  GetPartographUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<Partograph> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getPartograph(
      partographId: partographId,
    );
  }
}
