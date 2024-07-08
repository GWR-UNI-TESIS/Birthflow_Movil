import 'package:birthflow_movil/src/core/lib/usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

class PartographGetUseCase implements UseCase<List<Partograph>, String> {
  final PartographRepository _partogramaRepository;

  PartographGetUseCase({required PartographRepository partogramaRepository})
      : _partogramaRepository = partogramaRepository;

  @override
  Future<List<Partograph>?> execute([String? id]) async {
    return await _partogramaRepository.get(userId: id!);
  }
}
