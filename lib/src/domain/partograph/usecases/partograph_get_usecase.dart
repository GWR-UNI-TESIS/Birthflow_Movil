import 'package:birthflow_movil/src/core/lib/usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

class PartographGetUseCase implements UseCase<List<Partograph>, String> {
  final PartographRepository _partographRepository;

  PartographGetUseCase({required PartographRepository partogramaRepository})
      : _partographRepository = partogramaRepository;

  @override
  Future<List<Partograph>?> execute([String? id]) async {
    return null;
  
    //return await _partographRepository.getPartograph(userId: id!);
  }
}
