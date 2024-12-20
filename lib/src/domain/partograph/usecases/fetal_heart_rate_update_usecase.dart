import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class UpdateFetalHeartRateUseCase {
  Future<FetalHeartRate?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class UpdateFetalHeartRateUseCaseImplementation
    implements UpdateFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  UpdateFetalHeartRateUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<FetalHeartRate?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.updateFetalHeartRate(
      id: id,
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
