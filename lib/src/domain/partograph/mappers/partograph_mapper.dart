import 'package:birthflow_movil/src/data/partograph/models/partograph_response.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';

// ignore: avoid_classes_with_only_static_members
class PartographMapper {
  static Partograph toEntity(PartographResponse response) {
    return Partograph(
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

  static List<Partograph> toEntityList(List<PartographResponse> responses) {
    return responses.map((response) => toEntity(response)).toList();
  }
}
