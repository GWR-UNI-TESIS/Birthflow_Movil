import 'package:freezed_annotation/freezed_annotation.dart';

part 'cervical_dilation_response.freezed.dart';
part 'cervical_dilation_response.g.dart';

@freezed
class CervicalDilationResponse with _$CervicalDilationResponse {
  const factory CervicalDilationResponse({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required bool isDelete,
    required DateTime createAt,
    DateTime? updateAt,
    DateTime? deleteAt,
    required String createdBy,
    String? updateBy,
    String? deleteBy,
  }) = _CervicalDilationResponse;

  factory CervicalDilationResponse.fromJson(Map<String, dynamic> json) =>
      _$CervicalDilationResponseFromJson(json);
}
