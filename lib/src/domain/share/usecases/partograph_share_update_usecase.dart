
import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class UpdatePartographShareUseCase {
  Future<PartographShare?> execute({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });
}

class UpdatePartographShareUseCaseImplementation
    implements UpdatePartographShareUseCase {
  final ShareRepository _shareRepository;

  UpdatePartographShareUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographShare?> execute({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    return await _shareRepository.updatePartographShare(
      id: id,
      partographId: partographId,
      userId: userId,
      groupId: groupId,
      permissionTypeId: permissionTypeId,
    );
  }
}
