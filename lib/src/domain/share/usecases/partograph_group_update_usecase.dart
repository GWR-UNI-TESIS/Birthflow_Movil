import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';

abstract class UpdatePartographGroupUseCase {
  Future<PartographGroup?> execute({
    required int id,
    required String name,
    required String description,
  });
}

class UpdatePartographGroupUseCaseImplementation
    implements UpdatePartographGroupUseCase {
  final ShareRepository _shareRepository;

  UpdatePartographGroupUseCaseImplementation({
    required ShareRepository shareRepository,
  }) : _shareRepository = shareRepository;

  @override
  Future<PartographGroup?> execute({
    required int id,
    required String name,
    required String description,
  }) async {
    return await _shareRepository.updatePartographGroup(
      id: id,
      name: name,
      description: description,
    );
  }
}
