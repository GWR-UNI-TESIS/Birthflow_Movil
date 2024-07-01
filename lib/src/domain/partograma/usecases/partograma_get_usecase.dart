import 'package:birthflow_movil/src/core/lib/usecase.dart';
import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';
import 'package:birthflow_movil/src/domain/partograma/repositories/partograma_repository.dart';

class PartogramaGetUseCase implements UseCase<List<Partograma>, String> {
  final PartogramaRepository _partogramaRepository;

  PartogramaGetUseCase({required PartogramaRepository partogramaRepository})
      : _partogramaRepository = partogramaRepository;

  @override
  Future<List<Partograma>?> execute([String? id]) async {
    return await _partogramaRepository.get(userId: id!);
  }
}
