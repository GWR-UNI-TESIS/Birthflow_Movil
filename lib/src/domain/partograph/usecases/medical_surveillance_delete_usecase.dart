import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeleteMedicalSurveillanceUseCase {
  Future<MedicalSurveillanceTable?> execute({
    required int id,
  });
}

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
