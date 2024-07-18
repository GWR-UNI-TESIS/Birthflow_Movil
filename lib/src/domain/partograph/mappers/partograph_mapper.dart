import 'package:birthflow_movil/src/data/partograph/models/partograph_response.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';

// ignore: avoid_classes_with_only_static_members
class PartographMapper {
  static Partograph toEntity(PartographResponse response) {
    return Partograph(
      partographId: response.partographId,
      name: response.name,
      recordName: response.recordName,
      date: DateTime.tryParse(response.date)!,
      observation: response.observation,
      createdBy: response.createdBy,
      createdAt: DateTime.tryParse(response.createdAt)!,
      deletedAt: DateTime.tryParse(response.deletedAt ?? ''),
      deletedBy: response.deletedBy,
      // ignore: avoid_bool_literals_in_conditional_expressions
      isDelete: response.isDelete,
    );
  }

  static List<Partograph> toEntityList(List<PartographResponse> responses) {
    return responses.map((response) => toEntity(response)).toList();
  }
}
