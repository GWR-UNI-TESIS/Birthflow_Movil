import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class SearchPartographsUseCase {
  Future<List<PartographList>?> execute({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  });
}

class SearchPartographsUseCaseImplementation
    implements SearchPartographsUseCase {
  final PartographRepository _partographRepository;

  SearchPartographsUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<PartographList>?> execute({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  }) async => await _partographRepository.searchPartographs(
      name: name,
      filterId: filterId,
      activityId: activityId,
      hourFilterId: hourFilterId,
    );
}
