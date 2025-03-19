import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class DeletePresentationPositionVarietyUseCase {
  Future<PresentationPositionVariety?> execute({
    required int id,
  });
}

class DeletePresentationPositionVarietyUseCaseImplementation
    implements DeletePresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;
  DeletePresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<PresentationPositionVariety?> execute({
    required int id,
  }) async {
    return await _partographRepository.deletePresentationPositionVariety(
      id: id,
    );
  }
}
