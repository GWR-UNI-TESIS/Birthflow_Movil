import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_events.freezed.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.submitted({required String oldPassword, required String newPassword}) = ChangePasswordSubmitted;
}
