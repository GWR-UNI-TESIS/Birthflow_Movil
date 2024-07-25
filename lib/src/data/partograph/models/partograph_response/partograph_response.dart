import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_response.freezed.dart';
part 'partograph_response.g.dart';


@freezed
class PartographResponse with _$PartographResponse {
  const factory PartographResponse({
    required String partographId,
    required String name,
    required String recordName,
    required String date,
    required String observation,
     String? workTime,
    required bool isDelete,
    required String createdAt,
    required String createdBy,
    String? deletedAt,
    String? deletedBy,
  }) = _PartographResponse;

  factory PartographResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographResponseFromJson(json);
}
