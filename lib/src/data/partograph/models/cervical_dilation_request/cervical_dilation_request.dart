import 'package:freezed_annotation/freezed_annotation.dart';

part 'cervical_dilation_request.freezed.dart';
part 'cervical_dilation_request.g.dart';

@freezed
class CervicalDilationRequest with _$CervicalDilationRequest {
  const factory CervicalDilationRequest({
    int? id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
  }) = _CervicalDilationRequest;

  factory CervicalDilationRequest.fromJson(Map<String, dynamic> json) =>
      _$CervicalDilationRequestFromJson(json);
}
