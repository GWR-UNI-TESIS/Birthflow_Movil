import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class CreatePartographGroupItemUseCase {
  Future<PartographGroupItem?> execute({
    required String partographId,
    required int partographGroupId,
  });
}

class CreatePartographGroupItemUseCaseImplementation
    implements CreatePartographGroupItemUseCase {
  final ShareRepository _shareRepository;

  CreatePartographGroupItemUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroupItem?> execute({
    required String partographId,
    required int partographGroupId,
  }) async {
    return await _shareRepository.createPartographGroupItem(
      partographId: partographId,
      partographGroupId: partographGroupId,
    );
  }
}
