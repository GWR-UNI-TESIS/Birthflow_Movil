import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: obtener las asignaciones (usuarios/permisos) de un partograma.
abstract class GetAsignUserGroupUseCase {
  /// Retorna las asignaciones actuales para [partographId].
  Future<AsignUserGroup?> execute({
    required String partographId,
  });
}

/// Implementación que delega en [ShareRepository].
class GetAsignUserGroupUseCaseImplementation
    implements GetAsignUserGroupUseCase {
  final ShareRepository _shareRepository;

  GetAsignUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<AsignUserGroup?> execute({
    required String partographId,
  }) async {
    // Delegación directa al repositorio.
    return await _shareRepository.getAsignUserGroup(
      partographId: partographId,
    );
  }
}
