import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.freezed.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.loadUsers(int groupId) = LoadUsers;
  const factory UsersEvent.addUser(String userId, int groupId) = AddUser;
  const factory UsersEvent.deleteUser(String userId, int groupId) = DeleteUser;
}
