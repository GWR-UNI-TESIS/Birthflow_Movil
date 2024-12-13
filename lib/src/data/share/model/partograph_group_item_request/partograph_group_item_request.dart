import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_item_request.freezed.dart';
part 'partograph_group_item_request.g.dart';

@freezed
class PartographGroupItemRequest with _$PartographGroupItemRequest {
  const factory PartographGroupItemRequest({
    required String partographId,
    required int partographGroupId,
  }) = _PartographGroupItemRequest;

  factory PartographGroupItemRequest.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupItemRequestFromJson(json);
}
