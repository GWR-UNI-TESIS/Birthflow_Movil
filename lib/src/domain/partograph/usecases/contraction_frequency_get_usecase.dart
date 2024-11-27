import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class ContractionFrequencyGetUsecase {
  Future<List<ContractionFrequency>?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class ContractionFrequencyGetUsecaseImplementation
    implements ContractionFrequencyGetUsecase {
  final PartographRepository _partographRepository;

  ContractionFrequencyGetUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<List<ContractionFrequency>?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.getContractionFrequency(
      partographId: partographId,
    );
  }
}
