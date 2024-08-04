import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';

abstract class PartographRepository {
  Future<List<Partograph>?> getPartograph({required String userId});

  Future<Partograph?> createPartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  });

  Future<void> updatePartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
  });

  Future<void> deletePartograph({
    required String partographId,
  });

  Future<List<CervicalDilation>?> getCervicalDilation({
    required String partographId,
  });

  Future<CervicalDilation?> createCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  });

  Future<CervicalDilation?> updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  });

  Future<CervicalDilation?> deleteCervicalDilation({
    required int id,
    required String userId,
  });
}
