import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class UpdateMedicalSurveillanceUseCase {
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

class UpdateMedicalSurveillanceUseCaseImplementation
    implements UpdateMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;
  UpdateMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
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
