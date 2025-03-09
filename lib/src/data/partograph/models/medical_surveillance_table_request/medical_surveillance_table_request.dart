import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_surveillance_table_request.freezed.dart';
part 'medical_surveillance_table_request.g.dart';

@freezed
class MedicalSurveillanceTableRequest with _$MedicalSurveillanceTableRequest {
  const factory MedicalSurveillanceTableRequest({
    int? id,
    required String partographId,
    required String maternalPosition,
    required String arterialPressure,
    required String maternalPulse,
    required String fetalHeartRate,
    required String contractionsDuration,
    required String frequencyContractions,
    required String pain,
    required String letter,
    required DateTime time,
  }) = _MedicalSurveillanceTableRequest;

  factory MedicalSurveillanceTableRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicalSurveillanceTableRequestFromJson(json);
}
