import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class UpdateGroupUseCase {
  Future<Group?> execute({
    required int id,
    required String name,
  });
}

class UpdateGroupUseCaseImplementation implements UpdateGroupUseCase {
  final ShareRepository _shareRepository;

  UpdateGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required int id,
    required String name,
  }) async {
    return await _shareRepository.updateGroup(
      id: id,
      name: name,
    );
  }
}
