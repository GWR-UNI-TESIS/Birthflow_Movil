import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetPresentationPositionVarietyUseCase {
  Future<List<PresentationPositionVariety>?> execute({
    required String partographId,
  });
}

class GetPresentationPositionVarietyUseCaseImplementation
    implements GetPresentationPositionVarietyUseCase {
  final PartographRepository _partographRepository;
  GetPresentationPositionVarietyUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<PresentationPositionVariety>?> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getPresentationPositionVariety(
      partographId: partographId,
    );
  }
}
