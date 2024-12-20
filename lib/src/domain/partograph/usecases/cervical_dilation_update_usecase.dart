import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class UpdateCervicalDilationUseCase {
  Future<CervicalDilation?> execute({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });
}

class UpdateCervicalDilationUseCaseImplementation
    implements UpdateCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  UpdateCervicalDilationUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

  @override
  Future<CervicalDilation?> execute({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    return await _partographRepository.updateCervicalDilation(
      id: id,
      partographId: partographId,
      value: value,
      hour: hour,
      remOrRam: remOrRam,
    );
  }
}
