import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PresentationPositionVarietyCreateUsecase {
  Future<PresentationPositionVariety?> execute({
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
    required String userId,
  });
}

class PresentationPositionVarietyCreateUsecaseImplementation
    implements PresentationPositionVarietyCreateUsecase {
  final PartographRepository _partographRepository;
  PresentationPositionVarietyCreateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<PresentationPositionVariety?> execute({
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
    required String userId,
  }) async {
    return _partographRepository.createPresentationPositionVariety(
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
      userId: userId,
    );
  }
}
