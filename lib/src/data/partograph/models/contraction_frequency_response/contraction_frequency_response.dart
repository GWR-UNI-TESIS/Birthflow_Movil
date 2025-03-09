import 'package:freezed_annotation/freezed_annotation.dart';

part 'contraction_frequency_response.freezed.dart';
part 'contraction_frequency_response.g.dart';

@freezed
class ContractionFrequencyResponse with _$ContractionFrequencyResponse {
  const factory ContractionFrequencyResponse({
    required int id,
    required String partographId,
    required String value,
    required DateTime time,
  }) = _ContractionFrequencyResponse;

  factory ContractionFrequencyResponse.fromJson(Map<String, dynamic> json) =>
      _$ContractionFrequencyResponseFromJson(json);
}
