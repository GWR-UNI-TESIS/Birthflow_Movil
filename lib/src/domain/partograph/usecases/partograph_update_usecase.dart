import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PartographUpdateUsecase {
  Future<Partograph?> execute({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });
}

class PartographUpdateUsecaseImplementation implements PartographUpdateUsecase {
  final PartographRepository _partographRepository;

  PartographUpdateUsecaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<Partograph?> execute({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  }) async {
    return await _partographRepository.updatePartograph(
      partographId: partographId,
      name: name,
      recordName: recordName,
      date: date,
      observation: observation,
      worktime: worktime,
    );
  }
}
