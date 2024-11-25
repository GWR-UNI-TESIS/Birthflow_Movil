import 'package:freezed_annotation/freezed_annotation.dart';

part 'contraction_frequency_request.freezed.dart';
part 'contraction_frequency_request.g.dart';

@freezed
class ContractionFrequencyRequest with _$ContractionFrequencyRequest {
  const factory ContractionFrequencyRequest({
    int? id,
    required String partographId,
    required String value,
    required DateTime time,
  }) = _ContractionFrequencyRequest;

  factory ContractionFrequencyRequest.fromJson(Map<String, dynamic> json) =>
      _$ContractionFrequencyRequestFromJson(json);
}
