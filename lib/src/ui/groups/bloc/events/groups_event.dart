import 'package:freezed_annotation/freezed_annotation.dart';

part 'groups_event.freezed.dart';

@freezed
class GroupsEvent with _$GroupsEvent {
  const factory GroupsEvent.loadGroups() = LoadGroups;
  const factory GroupsEvent.createGroup(String name) = CreateGroup;
  const factory GroupsEvent.updateGroup(int id, String name) = UpdateGroup;
  const factory GroupsEvent.deleteGroup(int id) = DeleteGroup;
}
