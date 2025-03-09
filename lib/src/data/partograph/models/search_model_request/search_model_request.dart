import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model_request.freezed.dart';
part 'search_model_request.g.dart';

@freezed
class SearchModelRequest with _$SearchModelRequest {
  const factory SearchModelRequest({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  }) = _SearchModelRequest;

  factory SearchModelRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchModelRequestFromJson(json);
}
