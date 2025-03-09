import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_request.freezed.dart';
part 'partograph_request.g.dart';

@freezed
class PartographRequest with _$PartographRequest {
  const factory PartographRequest({
    String? partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String workTime,
  }) = _PartographRequest;

  factory PartographRequest.fromJson(Map<String, dynamic> json) =>
      _$PartographRequestFromJson(json);
}
