import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PresentationPositionVarietyUpdateUsecase {
  Future<PresentationPositionVariety?> execute({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
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
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) async {
    return _partographRepository.updatePresentationPositionVariety(
      id: id,
      partographId: partographId,
      hodgePlane: hodgePlane,
      position: position,
      time: time,
    );
  }
}
