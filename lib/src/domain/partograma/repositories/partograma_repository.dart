import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';

abstract class PartogramaRepository {
  Future<List<Partograma>?> get({required String userId});

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
