import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PresentationPositionVarietyCreateUsecase {
  Future<PresentationPositionVariety?> execute({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
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
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    return _partographRepository.createPresentationPositionVariety(
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
    );
  }
}
