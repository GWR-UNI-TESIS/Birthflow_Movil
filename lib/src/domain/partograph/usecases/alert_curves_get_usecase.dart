import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener las curvas de alerta del partograma.
abstract class GetAlertCurvesUseCase {
  /// Retorna las curvas de alerta para [partographId].
  Future<AlertCurves?> execute({
    required String partographId,
  });
}

/// Implementación que delega en el PartographRepository.
class GetAlertCurvesUseCaseImplementation implements GetAlertCurvesUseCase {
  final PartographRepository _partographRepository;

  GetAlertCurvesUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delegación directa al repositorio.
  Future<AlertCurves?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getCurves(
      partographId: partographId,
    );
  }
}
