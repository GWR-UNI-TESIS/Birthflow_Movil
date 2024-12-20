
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeleteGroupUseCase {
  Future<Group?> execute({
    required int id,
  });
}

class DeleteGroupUseCaseImplementation implements DeleteGroupUseCase {
  final ShareRepository _shareRepository;

  DeleteGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<Group?> execute({
    required int id,
  }) async {
    return await _shareRepository.deleteGroup(id: id);
  }
}