import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetMedicalSurveillanceUseCase {
  Future<List<MedicalSurveillanceTable>?> execute({
    required String partographId,
  });
}

class GetMedicalSurveillanceUseCaseImplementation
    implements GetMedicalSurveillanceUseCase {
  final PartographRepository _partographRepository;
  GetMedicalSurveillanceUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<List<MedicalSurveillanceTable>?> execute({
    required String partographId,
  }) async {
    return _partographRepository.getMedicalSurveillance(
      partographId: partographId,
    );
  }
}
