import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeletePartographShareUseCase {
  Future<PartographShare?> execute({
    required int id,
  });
}

class DeletePartographShareUseCaseImplementation
    implements DeletePartographShareUseCase {
  final ShareRepository _shareRepository;

  DeletePartographShareUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographShare?> execute({
    required int id,
  }) async {
    return await _shareRepository.deletePartographShare(id: id);
  }
}
