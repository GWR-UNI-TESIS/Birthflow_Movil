import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class PartographCreateUseCase {
  Future<Partograph?> execute({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  });
}

class PartographCreateUseCaseImplementation implements PartographCreateUseCase {
  final PartographRepository _partographRepository;

  PartographCreateUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<Partograph?> execute({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  }) async {
    return await _partographRepository.create(
        partogramaId: partogramaId,
        name: name,
        recordName: recordName,
        date: date,
        observation: observation,
        worktime: worktime,
        createBy: createBy,);
  }
}
