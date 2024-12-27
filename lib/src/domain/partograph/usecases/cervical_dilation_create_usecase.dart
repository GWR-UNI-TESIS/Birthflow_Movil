import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CreateCervicalDilationUseCase {
  Future<CervicalDilation?> execute({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });
}

class CreateCervicalDilationUseCaseImplementation
    implements CreateCervicalDilationUseCase {
  final PartographRepository _partographRepository;

  CreateCervicalDilationUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<CervicalDilation?> execute({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) async {
    return await _partographRepository.createCervicalDilation(
      partographId: partographId,
      value: value,
      hour: hour,
      remOrRam: remOrRam,
    );
  }
}
