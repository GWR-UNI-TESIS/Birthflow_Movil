import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class GetGroupsUseCase {
  Future<List<Group>?> execute();
}

class GetGroupsUseCaseImplementation implements GetGroupsUseCase {
  final ShareRepository _shareRepository;

  GetGroupsUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<Group>?> execute() async {
    return await _shareRepository.getGroups();
  }
}
