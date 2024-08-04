import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CervicalDilationDeleteUseCase {
  Future<CervicalDilation?> execute({
    required int id,
    required String userId,
  });
}

class CervicalDilationDeleteUseCaseImplementation
    implements CervicalDilationDeleteUseCase {
  final PartographRepository _partographRepository;

  CervicalDilationDeleteUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<CervicalDilation?> execute({
    required int id,
    required String userId,
  }) async {
    return await _partographRepository.deleteCervicalDilation(
      id: id,
      userId: userId,
    );
  }
}
