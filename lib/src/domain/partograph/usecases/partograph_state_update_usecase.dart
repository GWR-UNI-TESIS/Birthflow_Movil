import 'package:birthflow_movil/src/domain/partograph/entities/partograph_state.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: actualizar flags/estado de un partograma.
abstract class UpdatePartographStateUseCase {
  /// Aplica los flags (archivado, set, silenciado, favorito) a [partographId].
  Future<PartographState?> execute({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  });
}

/// Implementación que delega la actualización al repositorio.
class UpdatePartographStateUseCaseImplementation implements UpdatePartographStateUseCase {
  final PartographRepository _partographRepository;

  UpdatePartographStateUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<PartographState?> execute({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  }) async {
    return await _partographRepository.updatePartographState(
      partographId: partographId,
      isAchived: isAchived,
      set: set,
      silenced: silenced,
      favorite: favorite,
    );
  }
}
