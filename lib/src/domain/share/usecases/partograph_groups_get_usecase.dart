import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class GetPartographGroupsUseCase {
  Future<List<PartographGroup>?> execute();
}

class GetPartographGroupsUseCaseImplementation
    implements GetPartographGroupsUseCase {
  final ShareRepository _shareRepository;

  GetPartographGroupsUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<List<PartographGroup>?> execute() async {
    return await _shareRepository.getPartographGroups();
  }
}
