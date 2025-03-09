import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class CreateGroupUseCase {
  Future<Group?> execute({
    required String name,
  });
}

class CreateGroupUseCaseImplementation implements CreateGroupUseCase {
  final ShareRepository _shareRepository;

  CreateGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required String name,
  }) async {
    return await _shareRepository.createGroup(name: name);
  }
}
