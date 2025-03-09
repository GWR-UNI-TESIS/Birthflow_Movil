import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class UpdateContractionFrequencyUseCase {
  Future<ContractionFrequency?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class UpdateContractionFrequencyUseCaseImplementation
    implements UpdateContractionFrequencyUseCase {
  final PartographRepository _partographRepository;

  UpdateContractionFrequencyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<ContractionFrequency?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.updateContractionFrequency(
      id: id,
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
