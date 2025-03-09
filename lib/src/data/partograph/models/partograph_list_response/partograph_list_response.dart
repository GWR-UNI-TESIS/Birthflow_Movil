import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_list_response.freezed.dart';
part 'partograph_list_response.g.dart';

@freezed
class PartographListResponse with _$PartographListResponse {
  const factory PartographListResponse({
    required String partographId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String workTime,
    required DateTime createdAt,
    String? createdBy,
    DateTime? updateAt,
    String? updateBy,
    required int stateId,
    required String userId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
    int? accessType,
  }) = _PartographListResponse;

  factory PartographListResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographListResponseFromJson(json);
}
