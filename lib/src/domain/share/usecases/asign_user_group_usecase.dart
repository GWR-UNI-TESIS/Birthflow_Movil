import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class AsignUserGroupUseCase {
  Future<AsignUserGroup?> execute({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  });
}

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
