import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_users_state.freezed.dart';

@freezed
class SearchUsersState with _$SearchUsersState {
  const factory SearchUsersState.initial() = _Initial;
  const factory SearchUsersState.loading() = _Loading;
  const factory SearchUsersState.success(List<SearchUserGroup> results) = _Success;
  const factory SearchUsersState.error(String message) = _Error;
}
