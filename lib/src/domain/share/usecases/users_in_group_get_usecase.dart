import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class GetUsersInGroupUseCase {
  Future<List<User>?> execute({
    required int groupId,
  });
}

class GetUsersInGroupUseCaseImplementation implements GetUsersInGroupUseCase {
  final ShareRepository _shareRepository;

  GetUsersInGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<User>?> execute({
    required int groupId,
  }) async {
    return await _shareRepository.getUsersInGroup(groupId: groupId);
  }
}
