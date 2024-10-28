import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_surveillance_table_response.freezed.dart';
part 'medical_surveillance_table_response.g.dart';

@freezed
class MedicalSurveillanceTableResponse with _$MedicalSurveillanceTableResponse {
  const factory MedicalSurveillanceTableResponse({
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

  }) = _MedicalSurveillanceTableResponse;

  factory MedicalSurveillanceTableResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MedicalSurveillanceTableResponseFromJson(json);
}
