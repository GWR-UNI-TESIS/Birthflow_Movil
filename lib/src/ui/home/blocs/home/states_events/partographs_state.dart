import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'partographs_state.freezed.dart';

@freezed
class PartographsState with _$PartographsState {
  const factory PartographsState.initial() = Initial;
  const factory PartographsState.loading() = Loading;
  const factory PartographsState.empty() = Empty;
  const factory PartographsState.loaded(List<PartographList> data) = Loaded;
  const factory PartographsState.error(String errorMessage) = Error;
}
