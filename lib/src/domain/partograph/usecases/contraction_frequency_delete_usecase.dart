import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class ContractionFrequencyDeleteUsecase {
  Future<ContractionFrequency?> execute({
    required int id,
  });
}

class ContractionFrequencyDeleteUsecaseImplementation
    implements ContractionFrequencyDeleteUsecase {
  final PartographRepository _partographRepository;

  ContractionFrequencyDeleteUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<ContractionFrequency?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteContractionFrequency(
      id: id,
    );
  }
}
