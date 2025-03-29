import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_state.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';

abstract class PartographRepository {
  Future<List<PartographList>?> getPartographs({required String userId});

  Future<Partograph> getPartograph({required String partographId});

  Future<Partograph?> createPartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });

  Future<Partograph?> updatePartograph({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
  });

  Future<Partograph> deletePartograph({
    required String partographId,
  });

  Future<List<PartographList>?> searchPartographs({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  });

  Future<List<CervicalDilation>?> getCervicalDilation({
    required String partographId,
  });

  Future<CervicalDilation?> createCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });

  Future<CervicalDilation?> updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  });

  Future<CervicalDilation?> deleteCervicalDilation({
    required int id,
  });

  Future<List<MedicalSurveillanceTable>?> getMedicalSurveillance({
    required String partographId,
  });

  Future<MedicalSurveillanceTable?> createMedicalSurveillance({
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  });

  Future<MedicalSurveillanceTable?> updateMedicalSurveillance({
    required int id,
    required String partographId,
    required String letter,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required DateTime time,
  });

  Future<MedicalSurveillanceTable?> deleteMedicalSurveillance({
    required int id,
  });

  Future<List<PresentationPositionVariety>?> getPresentationPositionVariety({
    required String partographId,
  });

  Future<PresentationPositionVariety?> createPresentationPositionVariety({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  });

  Future<PresentationPositionVariety?> updatePresentationPositionVariety({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  });

  Future<PresentationPositionVariety?> deletePresentationPositionVariety({
    required int id,
  });

  Future<List<FetalHeartRate>?> getFetalHeartRate({
    required String partographId,
  });

  Future<FetalHeartRate?> createFetalHeartRate({
    required String partographId,
    required String value,
    required DateTime time,
  });

  Future<FetalHeartRate?> updateFetalHeartRate({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });

  Future<FetalHeartRate?> deleteFetalHeartRate({
    required int id,
  });

  Future<List<ContractionFrequency>?> getContractionFrequency({
    required String partographId,
  });

  Future<ContractionFrequency?> createContractionFrequency({
    required String partographId,
    required String value,
    required DateTime time,
  });

  Future<ContractionFrequency?> updateContractionFrequency({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  });

  Future<ContractionFrequency?> deleteContractionFrequency({
    required int id,
  });

  Future<PartographState?> updatePartographState({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  });

  Future<AlertCurves?> getCurves({
    required String partographId,
  });

  Future<ChildbirthNote?> createChildbirthNote({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
    required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  });

  Future<ChildbirthNote?> updateChildbirthNote({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
    required String peso,
    required String apgar,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  });
}
