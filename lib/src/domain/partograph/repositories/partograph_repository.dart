import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';

abstract class PartographRepository {
  Future<List<Partograph>?> get({required String userId});

  Future<void> create({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  });

  Future<void> updateObservation({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  });

  Future<void> delete({
    required String partogramaId,
  });
}
