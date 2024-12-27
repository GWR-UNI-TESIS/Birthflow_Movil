import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_response.freezed.dart';
part 'filter_response.g.dart';

@freezed
class FilterResponse with _$FilterResponse {
  const factory FilterResponse({
    required int id,
    required String description,
  }) = _FilterResponse;

  factory FilterResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterResponseFromJson(json);
}
