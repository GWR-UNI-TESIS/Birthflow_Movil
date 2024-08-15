import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class MedicalSurveillanceGetUsecase {
  Future<List<MedicalSurveillanceTable>?> execute({
    required String partographId,
  });
}

class MedicalSurveillanceGetUsecaseImplementation
    implements MedicalSurveillanceGetUsecase {
  final PartographRepository _partographRepository;
  MedicalSurveillanceGetUsecaseImplementation({
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
