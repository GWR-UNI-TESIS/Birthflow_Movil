import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_info_events.freezed.dart';

@freezed
class ChangeUserInfoEvent with _$ChangeUserInfoEvent {
  const factory ChangeUserInfoEvent.getUser() = GetUser;

  const factory ChangeUserInfoEvent.changeUserInfo({
    required String? id,
    required String name,
    required String secondName,
    required String userName,
    required String email,
    int? phoneNumber,
  }) = ChangeUserInfo;
}
