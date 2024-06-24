import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';
import 'package:birthflow_movil/src/domain/partograma/repositories/partograma_repository.dart';

class PartogramaRepositoryImplementation implements PartogramaRepository {
  @override
  Future<void> create({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  }) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required String partogramaId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Partograma>?> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<void> updateObservation({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  }) {
    // TODO: implement updateObservation
    throw UnimplementedError();
  }
}
