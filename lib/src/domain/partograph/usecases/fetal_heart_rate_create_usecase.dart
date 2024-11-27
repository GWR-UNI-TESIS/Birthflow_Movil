import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class FetalHeartRateCreateUsecase {
  Future<FetalHeartRate?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  });
}

class FetalHeartRateCreateUsecaseImplementation
    implements FetalHeartRateCreateUsecase {
  final PartographRepository _partographRepository;

  FetalHeartRateCreateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<FetalHeartRate?> execute({
    required String partographId,
    required String value,
    required DateTime time,
  }) async {
    return await _partographRepository.createFetalHeartRate(
      partographId: partographId,
      value: value,
      time: time,
    );
  }
}
