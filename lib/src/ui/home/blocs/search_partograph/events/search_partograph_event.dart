import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_partograph_event.freezed.dart';

@freezed
sealed  class SearchPartographEvent with _$SearchPartographEvent {
  const factory SearchPartographEvent.search({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  }) = _Search;
}
