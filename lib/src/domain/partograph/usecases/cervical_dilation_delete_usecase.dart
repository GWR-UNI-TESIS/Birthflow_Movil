import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeleteCervicalDilationUseCase {
  Future<CervicalDilation?> execute({
    required int id,
  });
}

class DeleteCervicalDilationUseCaseImplementation
    implements DeleteCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  DeleteCervicalDilationUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<CervicalDilation?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteCervicalDilation(
      id: id,
    );
  }
}
