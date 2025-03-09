import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.success(List<SearchUserGroup> results) = _Success;
  const factory SearchState.error(String message) = _Error;
}
