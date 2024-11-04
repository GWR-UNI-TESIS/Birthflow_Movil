import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class AlertCurvesGetUseCase {
  Future<AlertCurves?> execute({
    required String partographId,
  });
}

class AlertCurvesGetUseCaseImplementation implements AlertCurvesGetUseCase {
  final PartographRepository _partographRepository;

  AlertCurvesGetUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<AlertCurves?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCurves(
      partographId: partographId,
    );
  }
}
