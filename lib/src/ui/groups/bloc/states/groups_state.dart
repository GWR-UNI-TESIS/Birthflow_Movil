import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'groups_state.freezed.dart';

@freezed
class GroupsState with _$GroupsState {
  const factory GroupsState.loading() = Loading;
  const factory GroupsState.loaded(List<Group> groups) = Loaded;
  const factory GroupsState.actionSuccess(String message) = ActionSuccess;
  const factory GroupsState.error(String message) = Error;
}
