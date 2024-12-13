import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_group_item_response.freezed.dart';
part 'partograph_group_item_response.g.dart';

@freezed
class PartographGroupItemResponse with _$PartographGroupItemResponse {
  const factory PartographGroupItemResponse({
    required String partographId,
    required int partographGroupId,
    required DateTime createdAt,
  }) = _PartographGroupItemResponse;

  factory PartographGroupItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographGroupItemResponseFromJson(json);
}
