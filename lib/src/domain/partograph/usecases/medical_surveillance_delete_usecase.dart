import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class MedicalSurveillanceDeleteUsecase {
  Future<MedicalSurveillanceTable?> execute({
    required int id,
  });
}

class MedicalSurveillanceDeleteUsecaseImplementation
    implements MedicalSurveillanceDeleteUsecase {
  final PartographRepository _partographRepository;
  MedicalSurveillanceDeleteUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<MedicalSurveillanceTable?> execute({
    required int id,
  }) async {
    return _partographRepository.deleteMedicalSurveillance(
      id: id,
    );
  }
}
