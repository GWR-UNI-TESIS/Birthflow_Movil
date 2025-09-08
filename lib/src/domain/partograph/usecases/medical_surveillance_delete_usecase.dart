import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: eliminar una fila de vigilancia médica.
abstract class DeleteMedicalSurveillanceUseCase {
  /// Elimina por [id] y retorna el registro eliminado (si aplica).
  Future<MedicalSurveillanceTable?> execute({
    required int id,
  });
}

/// Implementación que delega en el repositorio de partograma.
class DeleteMedicalSurveillanceUseCaseImplementation
    implements DeleteMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;

  DeleteMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<MedicalSurveillanceTable?> execute({
    required int id,
  }) async {
    return await _partographRepository.deleteMedicalSurveillance(
      id: id,
    );
  }
}
