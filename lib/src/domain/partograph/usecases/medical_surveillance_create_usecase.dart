import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear una fila de vigilancia médica en el partograma.
abstract class CreateMedicalSurveillanceUseCase {
  /// Crea el registro con los parámetros clínicos y la hora.
  Future<MedicalSurveillanceTable?> execute({
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

/// Implementación que delega la creación al repositorio de partograma.
class CreateMedicalSurveillanceUseCaseImplementation
    implements CreateMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;

  CreateMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la creación del registro y devuelve la fila creada.
  Future<MedicalSurveillanceTable?> execute({
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
    return  await _partographRepository.createMedicalSurveillance(
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
