import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class FetalHeartRateDeleteUsecase {
  Future<FetalHeartRate?> execute({
    required int id,
  });
}

class FetalHeartRateDeleteUsecaseImplementation
    implements FetalHeartRateDeleteUsecase {
  final PartographRepository _partographRepository;

  FetalHeartRateDeleteUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<FetalHeartRate?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteFetalHeartRate(
      id: id,
    );
  }
}
