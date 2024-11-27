import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class ContractionFrequencyCreateUsecase {
  Future<ContractionFrequency?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class ContractionFrequencyCreateUsecaseImplementation
    implements ContractionFrequencyCreateUsecase {
  final PartographRepository _partographRepository;

  ContractionFrequencyCreateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

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
