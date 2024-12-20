import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class UpdatePartographGroupShareUseCase {
  Future<PartographGroupShare?> execute({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });
}

class UpdatePartographGroupShareUseCaseImplementation
    implements UpdatePartographGroupShareUseCase {
  final ShareRepository _shareRepository;

  UpdatePartographGroupShareUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroupShare?> execute({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    return await _shareRepository.updatePartographGroupShare(
      id: id,
      partographGroupId: partographGroupId,
      userId: userId,
      groupId: groupId,
      permissionTypeId: permissionTypeId,
    );
  }
}
