import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class GetPartographListUseCase {
  Future<List<PartographList>?> execute({
    required String userId,
  });
}

class GetPartographListUseCaseImplementation
    implements GetPartographListUseCase {
  final PartographRepository _partographRepository;

  GetPartographListUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<PartographList>?> execute({
    required String userId,
  }) async {
    return await _partographRepository.getPartographs(
      userId: userId,
    );
  }
}
