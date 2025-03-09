import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class CreateUserGroupUseCase {
  Future<void> execute({
    required String userId,
    required int groupId,
  });
}

class CreateUserGroupUseCaseImplementation implements CreateUserGroupUseCase {
  final ShareRepository _shareRepository;

  CreateUserGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<void> execute({
    required String userId,
    required int groupId,
  }) async {
    await _shareRepository.createUserGroup(
      userId: userId,
      groupId: groupId,
    );
  }
}
