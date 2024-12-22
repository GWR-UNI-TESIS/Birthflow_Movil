import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class CreatePartographGroupUseCase {
  Future<PartographGroup?> execute({
    required String name,
    required String description,
  });
}

class CreatePartographGroupUseCaseImplementation
    implements CreatePartographGroupUseCase {
  final ShareRepository _shareRepository;

  CreatePartographGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroup?> execute({
    required String name,
    required String description,
  }) async {
    return await _shareRepository.createPartographGroup(
      name: name,
      description: description,
    );
  }
}
