import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = NotificationInitial;
  const factory NotificationState.registering() = NotificationRegistering;
  const factory NotificationState.success() = NotificationSuccess;
  const factory NotificationState.error(String message) = NotificationError;
}
