import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: crear un partograma.
abstract class CreatePartographUseCase {
  /// Crea el partograma con los datos básicos y retorna el resultado.
  Future<Partograph?> execute({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });
}

/// Implementación que delega en el PartographRepository.
class CreatePartographUseCaseImplementation implements CreatePartographUseCase {
  final PartographRepository _partographRepository;

  CreatePartographUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la creación al repositorio.
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
