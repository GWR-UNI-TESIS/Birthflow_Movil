import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: obtener filas de vigilancia médica de un partograma.
abstract class GetMedicalSurveillanceUseCase {
  /// Retorna la lista para el [partographId] indicado.
  Future<List<MedicalSurveillanceTable>?> execute({
    required String partographId,
  });
}

/// Implementación que delega en el repositorio de partograma.
class GetMedicalSurveillanceUseCaseImplementation
    implements GetMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;

  GetMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delegación directa al repositorio.
  Future<List<MedicalSurveillanceTable>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getMedicalSurveillance(
      partographId: partographId,
    );
  }
}
