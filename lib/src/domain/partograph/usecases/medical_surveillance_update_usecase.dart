import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class MedicalSurveillanceUpdateUsecase {
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
    required String userId,
  });
}

class MedicalSurveillanceUpdateUsecaseImplementation
    implements MedicalSurveillanceUpdateUsecase {
  final PartographRepository _partographRepository;
  MedicalSurveillanceUpdateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

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
    required String userId,
  }) async {
    return _partographRepository.updateMedicalSurveillance(
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
      userId: userId,
    );
  }
}
