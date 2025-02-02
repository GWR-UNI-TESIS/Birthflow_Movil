import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/domain/partograph_history/repositories/partograph_history_repository.dart';

abstract class GetPartographHistoryUsecase {
  Future<List<PartographVersion>> execute({required String partographId});
}

class GetPartographHistoryUsecaseImplementation
    implements GetPartographHistoryUsecase {
  final PartographHistoryRepository _partographHistoryRepository;

  GetPartographHistoryUsecaseImplementation({
    required PartographHistoryRepository partographHistoryRepository,
  }) : _partographHistoryRepository = partographHistoryRepository;

  @override
  Future<List<PartographVersion>> execute({
    required String partographId,
  }) async {
    return await _partographHistoryRepository.get(partographId: partographId);
  }
}
