import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PresentationPositionVarietyUpdateUsecase {
  Future<PresentationPositionVariety?> execute({
    required int id,
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
    required String userId,
  });
}

class PresentationPositionVarietyUpdateUsecaseImplementation
    implements PresentationPositionVarietyUpdateUsecase {
  final PartographRepository _partographRepository;
  PresentationPositionVarietyUpdateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<PresentationPositionVariety?> execute({
      required int id,
    required String partographId,
    required String hodgePlane,
    required String position,
    required DateTime time,
    required String userId,
  }) async {
    return _partographRepository.updatePresentationPositionVariety(
      id: id,
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
      userId: userId,
    );
  }
}
