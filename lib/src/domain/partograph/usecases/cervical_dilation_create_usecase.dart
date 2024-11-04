import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

abstract class CervicalDilationCreateUseCase {
  Future<CervicalDilation?> execute({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });
}

class CervicalDilationCreateUseCaseImplementation
    implements CervicalDilationCreateUseCase {
  final PartographRepository _partographRepository;

  CervicalDilationCreateUseCaseImplementation({
    required PartographRepository partogramaRepository,
  }) : _partographRepository = partogramaRepository;

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
