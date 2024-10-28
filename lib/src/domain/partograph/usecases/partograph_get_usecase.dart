import 'package:birthflow_movil/src/core/lib/usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PartographGetUsecase {
  Future<Partograph> execute({
    required String partographId,
  });
}

class PartographGetUsecaseImplementation implements PartographGetUsecase {
  final PartographRepository _partographRepository;

  PartographGetUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<Partograph> execute({
    required String partographId,
  }) async {
    return await _partographRepository.getPartograph(
      partographId: partographId,
    );
  }
}
