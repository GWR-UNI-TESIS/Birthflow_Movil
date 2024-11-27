import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class FetalHeartRateGetUsecase {
  Future<List<FetalHeartRate>?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class FetalHeartRateGetUsecaseImplementation
    implements FetalHeartRateGetUsecase {
  final PartographRepository _partographRepository;

  FetalHeartRateGetUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<List<FetalHeartRate>?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.getFetalHeartRate(
      partographId: partographId,
    );
  }
}
