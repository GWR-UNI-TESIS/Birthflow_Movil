import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar datos básicos de un partograma.
abstract class UpdatePartographUsecase {
  /// Actualiza y retorna el partograma resultante (o null según implementación).
  Future<Partograph?> execute({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });
}

/// Implementación que delega en el PartographRepository (inyección de dependencias).
class UpdatePartographUsecaseImplementation implements UpdatePartographUsecase {
  final PartographRepository _partographRepository;

  UpdatePartographUsecaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  /// Delega la actualización al repositorio.
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
