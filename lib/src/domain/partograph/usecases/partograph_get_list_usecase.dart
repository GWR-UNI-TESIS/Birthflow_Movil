import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PartographListGetUseCase {
  Future<List<PartographList>?> execute({
    required String userId,
  });
}

class PartographListGetUsecaseImplementation
    implements PartographListGetUseCase {
  final PartographRepository _partographRepository;

  PartographListGetUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<List<PartographList>?> execute({
    required String userId,
  }) async {
    return await _partographRepository.getPartographs(
      userId: userId,
    );
  }
}
