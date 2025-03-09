import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_request.freezed.dart';
part 'partograph_group_request.g.dart';

@freezed
class PartographGroupRequest with _$PartographGroupRequest {
  const factory PartographGroupRequest({
    int? id,
    required String name,
    required String description,
  }) = _PartographGroupRequest;

  factory PartographGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupRequestFromJson(json);
}
