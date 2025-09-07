import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener registros de FCF (frecuencia cardiaca fetal) de un partograma.
abstract class GetFetalHeartRateUseCase {
  /// Retorna la lista de FCF para [partographId].
  /// Nota: en la implementación actual solo se utiliza [partographId].
  Future<List<FetalHeartRate>?> execute({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });
}

/// Implementación que delega en el PartographRepository.
class GetFetalHeartRateUseCaseImplementation
    implements GetFetalHeartRateUseCase {
  final PartographRepository _partographRepository;

  GetFetalHeartRateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delegación directa: solo se usa [partographId] para la consulta.
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
