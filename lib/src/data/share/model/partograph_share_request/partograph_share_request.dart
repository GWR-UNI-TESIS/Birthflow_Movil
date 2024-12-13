import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_share_request.freezed.dart';
part 'partograph_share_request.g.dart';

@freezed
class PartographShareRequest with _$PartographShareRequest {
  const factory PartographShareRequest({
    int? id,
    required int partographGroupId ,
    required String userId,
    required int groupTd,
    required int permissionTypeId 
  }) = _PartographShareRequest;

  factory PartographShareRequest.fromJson(Map<String, dynamic> json) =>
      _$PartographShareRequestFromJson(json);
}
