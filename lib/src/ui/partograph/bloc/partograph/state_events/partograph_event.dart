import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_event.freezed.dart';

@freezed
class PartographEvent with _$PartographEvent {
  const factory PartographEvent.onFetchData({
    required String partographId,
  }) = onFetchData;
  const factory PartographEvent.saveCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) = SaveCervicalDilation;

  const factory PartographEvent.updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) = UpdateCervicalDilation;

  const factory PartographEvent.deleteCervicalDilation({
    required int id,
  }) = DeleteCervicalDilation;

  const factory PartographEvent.createMedicalSurveillance({
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
  }) = CreateMedicalSurveillance;

  // Nuevo evento para actualizar un registro en MedicalSurveillanceTable
  const factory PartographEvent.updateMedicalSurveillance({
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
  }) = UpdateMedicalSurveillance;

  const factory PartographEvent.createPresentationPositionVariety({
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) = CreatePresentationPositionVariety;

  const factory PartographEvent.updatePresentationPositionVariety({
    required int id,
    required String partographId,
    required int hodgePlane,
    required int position,
    required DateTime time,
  }) = UpdatePresentationPositionVariety;

  const factory PartographEvent.createFetalHeartRate({
    required String partographId,
    required String value,
    required DateTime time,
  }) = CreateFetalHeartRate;

  const factory PartographEvent.updateFetalHeartRate({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) = UpdateFetalHeartRate;

  const factory PartographEvent.createContractionFrequency({
    required String partographId,
    required String value,
    required DateTime time,
  }) = CreateContractionFrequency;

  const factory PartographEvent.updateContractionFrequency({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) = UpdateContractionFrequency;
}
