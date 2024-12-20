import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class CreatePartographShareUseCase {
  Future<PartographShare?> execute({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });
}

class CreatePartographShareUseCaseImplementation
    implements CreatePartographShareUseCase {
  final ShareRepository _shareRepository;

  CreatePartographShareUseCaseImplementation({
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
    return await _shareRepository.createPartographShare(
      id: id,
      partographId: partographId,
      userId: userId,
      groupId: groupId,
      permissionTypeId: permissionTypeId,
    );
  }
}
