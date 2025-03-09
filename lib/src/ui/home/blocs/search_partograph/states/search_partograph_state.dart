import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'search_partograph_state.freezed.dart';

@freezed
class SearchPartographState with _$SearchPartographState {
  const factory SearchPartographState.initial() = _Initial;
  const factory SearchPartographState.loading() = _Loading;
  const factory SearchPartographState.success({required List<PartographList> results}) = _Success;
  const factory SearchPartographState.empty() = _Empty;
  const factory SearchPartographState.error({required String message}) = _Error;
}
