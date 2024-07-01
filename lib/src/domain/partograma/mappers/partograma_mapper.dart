import 'package:birthflow_movil/src/data/partograma/models/partograma_response.dart';
import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';

// ignore: avoid_classes_with_only_static_members
class PartogramaMapper {
  static Partograma toEntity(PartogramaResponse response) {
    return Partograma(
      partogramaId: response.partogramaId!,
      creadoPor: response.creadoPor!,
      nombre: response.nombre!,
      expediente: response.expediente!,
      fecha: DateTime.tryParse(response.fecha ?? '')!,
      observacion: response.observacion!,
      fechaCreacion: DateTime.tryParse(response.fechaCreacion ?? '')!,
      fechaModificacion: DateTime.tryParse(response.fechaModificacion ?? '')!,
      eliminado: response.eliminado!,
    );
  }

  static List<Partograma> toEntityList(List<PartogramaResponse> responses) {
    return responses.map((response) => toEntity(response)).toList();
  }
}
