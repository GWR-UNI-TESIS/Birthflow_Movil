import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_share_response.freezed.dart';
part 'partograph_group_share_response.g.dart';

@freezed
class PartographGroupShareResponse with _$PartographGroupShareResponse {
  const factory PartographGroupShareResponse({
    required int id,
    required int partographGroupId ,
    String? userId,
    int? groupId,
    int? permissionTypeId,
    required DateTime createdAt,
  }) = _PartographGroupShareResponse;

  factory PartographGroupShareResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupShareResponseFromJson(json);
}
