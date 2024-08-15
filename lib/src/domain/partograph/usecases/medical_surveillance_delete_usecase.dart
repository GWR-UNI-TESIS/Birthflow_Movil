import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class MedicalSurveillanceDeleteUsecase {
  Future<MedicalSurveillanceTable?> execute({
    required int id,
    required String userId,
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
    required String userId,
  }) async {
    return _partographRepository.deleteMedicalSurveillance(
      id: id,
      userId: userId,
    );
  }
}
