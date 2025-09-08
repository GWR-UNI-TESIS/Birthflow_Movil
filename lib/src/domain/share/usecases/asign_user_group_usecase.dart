import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

/// Caso de uso: asignar permisos a usuarios sobre un partograma.
abstract class AsignUserGroupUseCase {
  /// Ejecuta la asignación de permisos.
  /// [partographId]: id del partograma.
  /// [permissionTypeId]: tipo de permiso a otorgar.
  /// [searchUserGroupDtos]: usuarios destino.
  Future<AsignUserGroup?> execute({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  });
}

/// Implementación que delega en ShareRepository.
class AsignUserGroupUseCaseImplementation implements AsignUserGroupUseCase {
  final ShareRepository _shareRepository;

  AsignUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<AsignUserGroup?> execute({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  }) async {
    return await _shareRepository.asignUserGroup(
      partographId: partographId,
      permissionTypeId: permissionTypeId,
      searchUserGroupDtos: searchUserGroupDtos,
    );
  }
}
