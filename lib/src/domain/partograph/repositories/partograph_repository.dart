import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';

abstract class PartographRepository {
  Future<List<Partograph>?> get({required String userId});

  Future<Partograph?> create({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  });

  Future<void> updateObservation({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
  });

  Future<void> delete({
    required String partogramaId,
  });
}
