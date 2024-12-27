import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class GetAsignUserGroupUseCase {
  Future<AsignUserGroup?> execute({
    required String partographId,
  });
}

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
    return await _shareRepository.getAsignUserGroup(
      partographId: partographId,
    );
  }
}
