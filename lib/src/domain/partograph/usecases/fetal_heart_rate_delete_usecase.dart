import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeleteFetalHeartRateUseCase {
  Future<FetalHeartRate?> execute({
    required int id,
  });
}

class DeleteFetalHeartRateUseCaseImplementation
    implements DeleteFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  DeleteFetalHeartRateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<FetalHeartRate?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteFetalHeartRate(
      id: id,
    );
  }
}
