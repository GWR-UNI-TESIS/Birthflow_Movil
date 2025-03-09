import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class DeletePartographGroupItemUseCase {
  Future<PartographGroupItem?> execute({
    required String partographId,
    required int partographGroupId,
  });
}

class DeletePartographGroupItemUseCaseImplementation
    implements DeletePartographGroupItemUseCase {
  final ShareRepository _shareRepository;

  DeletePartographGroupItemUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroupItem?> execute({
    required String partographId,
    required int partographGroupId,
  }) async {
    return await _shareRepository.deletePartographGroupItem(
      partographId: partographId,
      partographGroupId: partographGroupId,
    );
  }
}
