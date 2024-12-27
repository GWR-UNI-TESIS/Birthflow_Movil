import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CreateContractionFrequencyUseCase {
  Future<ContractionFrequency?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class CreateContractionFrequencyUseCaseImplementation
    implements CreateContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  CreateContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<ContractionFrequency?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.createContractionFrequency(
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
