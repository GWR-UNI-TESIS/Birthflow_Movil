import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_share_request.freezed.dart';
part 'partograph_group_share_request.g.dart';

@freezed
class PartographGroupShareRequest with _$PartographGroupShareRequest {
  const factory PartographGroupShareRequest({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) = _PartographGroupShareRequest;

  factory PartographGroupShareRequest.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupShareRequestFromJson(json);
}
