import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar una fila de vigilancia médica.
abstract class UpdateMedicalSurveillanceUseCase {
  /// Actualiza el registro y retorna la fila resultante.
  Future<MedicalSurveillanceTable?> execute({
    required int id,
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  });
}

/// Implementación que delega en el repositorio de partograma.
class UpdateMedicalSurveillanceUseCaseImplementation
    implements UpdateMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;

  UpdateMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la actualización al repositorio.
  Future<MedicalSurveillanceTable?> execute({
    required int id,
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  }) async {
    return await _partographRepository.updateMedicalSurveillance(
      id: id,
      partographId: partographId,
      letter: letter,
      maternalPosition: maternalPosition,
      arterialPressure: arterialPressure,
      maternalPulse: maternalPulse,
      fetalHeartRate: fetalHeartRate,
      contractionsDuration: contractionsDuration,
      frequencyContractions: frequencyContractions,
      pain: pain,
      time: time,
    );
  }
}
