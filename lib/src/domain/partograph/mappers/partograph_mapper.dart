import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_response/cervical_dilation_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/medical_surveillance_table_response/medical_surveillance_table_response.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_response/partograph_response.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
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

  static CervicalDilation toEntityCervicalDilation(
    CervicalDilationResponse response,
  ) {
    return CervicalDilation(
      id: response.id,
      partographId: response.partographId,
      value: response.value,
      hour: response.hour,
      remOrRam: response.remOrRam,
      isDelete: response.isDelete,
      createAt: response.createAt,
      updateAt: response.updateAt,
      deleteAt: response.deleteAt,
      createdBy: response.createdBy,
      updateBy: response.updateBy,
      deleteBy: response.deleteBy,
    );
  }

  static MedicalSurveillanceTable toEntityMedicalSurveillance(
    MedicalSurveillanceTableResponse response,
  ) {
    return MedicalSurveillanceTable(
      id: response.id,
      partographId: response.partographId,
      letter: response.letter,
      maternalPosition: response.maternalPosition,
      arterialPressure: response.arterialPressure,
      maternalPulse: response.maternalPulse,
      fetalHeartRate: response.fetalHeartRate,
      contractionsDuration: response.contractionsDuration,
      frequencyContractions: response.frequencyContractions,
      pain: response.pain,
      time: response.time,
    );
  }

  static List<Partograph> toEntityList(List<PartographResponse> responses) {
    return responses.map((response) => toEntity(response)).toList();
  }

  static List<CervicalDilation> toEntityListCervicalDilation(
    List<CervicalDilationResponse> responses,
  ) {
    return responses
        .map((response) => toEntityCervicalDilation(response))
        .toList();
  }

  static List<MedicalSurveillanceTable> toEntityListMedicalSurveillanceTable(
    List<MedicalSurveillanceTableResponse> responses,
  ) {
    return responses
        .map((response) => toEntityMedicalSurveillance(response))
        .toList();
  }
}
