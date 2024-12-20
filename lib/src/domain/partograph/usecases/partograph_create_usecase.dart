import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CreatePartographUseCase {
  Future<Partograph?> execute({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });
}

class CreatePartographUseCaseImplementation implements CreatePartographUseCase {
  final PartographRepository _partographRepository;

  CreatePartographUseCaseImplementation({
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
  }) async {
    return await _partographRepository.createPartograph(
      partogramaId: partogramaId,
      name: name,
      recordName: recordName,
      date: date,
      observation: observation,
      worktime: worktime,
    );
  }
}
