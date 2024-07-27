import 'package:birthflow_movil/src/ui/home/models/filters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partographs_event.freezed.dart';

@freezed
class PartographsEvent with _$PartographsEvent {
  const factory PartographsEvent.fetchPartographs({String? userId}) =
      FetchPartographs;

  const factory PartographsEvent.applyFiltersAndSearch({
    required FilterModel filter,
    required String searchText,
  }) = ApplyFiltersAndSearch;
}
