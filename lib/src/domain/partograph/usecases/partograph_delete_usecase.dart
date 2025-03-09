import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeletePartographUseCase {
  Future<Partograph> execute({
    required String partographId,
  });
}

class DeletePartographUseCaseImplementation implements DeletePartographUseCase {
  final PartographRepository _partographRepository;

  DeletePartographUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<Partograph> execute({
    required String partographId,
  }) async {
    return await _partographRepository.deletePartograph(
      partographId: partographId,
    );
  }
}
