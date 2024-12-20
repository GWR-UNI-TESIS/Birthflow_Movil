import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeletePartographGroupShareUseCase {
  Future<PartographGroupShare?> execute({
    required int id,
  });
}

class DeletePartographGroupShareUseCaseImplementation
    implements DeletePartographGroupShareUseCase {
  final ShareRepository _shareRepository;

  DeletePartographGroupShareUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroupShare?> execute({
    required int id,
  }) async {
    return await _shareRepository.deletePartographGroupShare(id: id);
  }
}
