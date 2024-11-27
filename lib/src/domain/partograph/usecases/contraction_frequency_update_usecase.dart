import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class ContractionFrequencyUpdateUsecase {
  Future<ContractionFrequency?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class ContractionFrequencyUpdateUsecaseImplementation
    implements ContractionFrequencyUpdateUsecase {
  final PartographRepository _partographRepository;

  ContractionFrequencyUpdateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

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
