import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeleteUserGroupUseCase {
  Future<void> execute({
    required String userId,
    required int groupId,
  });
}

class DeleteUserGroupUseCaseImplementation implements DeleteUserGroupUseCase {
  final ShareRepository _shareRepository;

  DeleteUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<void> execute({
    required String userId,
    required int groupId,
  }) async {
    await _shareRepository.deleteUserGroup(
      userId: userId,
      groupId: groupId,
    );
  }
}
