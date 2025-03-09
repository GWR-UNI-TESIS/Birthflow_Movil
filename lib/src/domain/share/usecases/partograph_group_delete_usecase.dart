import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeletePartographGroupUseCase {
  Future<PartographGroup?> execute({
    required int id,
  });
}

class DeletePartographGroupUseCaseImplementation
    implements DeletePartographGroupUseCase {
  final ShareRepository _shareRepository;

  DeletePartographGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroup?> execute({
    required int id,
  }) async {
    return await _shareRepository.deletePartographGroup(id: id);
  }
}
