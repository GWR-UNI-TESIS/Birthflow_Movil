import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PresentationPositionVarietyDeleteUsecase {
  Future<PresentationPositionVariety?> execute({
    required int id,
  });
}

class PresentationPositionVarietyDeleteUsecaseImplementation
    implements PresentationPositionVarietyDeleteUsecase {
  final PartographRepository _partographRepository;
  PresentationPositionVarietyDeleteUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<PresentationPositionVariety?> execute({
    required int id,
  }) async {
    return _partographRepository.deletePresentationPositionVariety(
      id: id,
    );
  }
}
