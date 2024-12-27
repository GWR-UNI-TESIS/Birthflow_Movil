import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeleteContractionFrequencyUseCase {
  Future<ContractionFrequency?> execute({
    required int id,
  });
}

class DeleteContractionFrequencyUseCaseImplementation
    implements DeleteContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  DeleteContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<ContractionFrequency?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteContractionFrequency(
      id: id,
    );
  }
}
