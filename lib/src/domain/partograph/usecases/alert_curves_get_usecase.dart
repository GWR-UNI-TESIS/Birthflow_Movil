import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetAlertCurvesUseCase {
  Future<AlertCurves?> execute({
    required String partographId,
  });
}

class GetAlertCurvesUseCaseImplementation implements GetAlertCurvesUseCase {
  final PartographRepository _partographRepository;

  GetAlertCurvesUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<AlertCurves?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCurves(
      partographId: partographId,
    );
  }
}
