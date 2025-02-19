import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_states.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = ChangePasswordInitial;
  const factory ChangePasswordState.loading() = ChangePasswordLoading;
  const factory ChangePasswordState.success() = ChangePasswordSuccess;
  const factory ChangePasswordState.failure(String message) = ChangePasswordFailure;
}
