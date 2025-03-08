import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.registerToken({
    required String userId,
    required String token,
  }) = RegisterTokenEvent;

  const factory NotificationEvent.tokenRefreshed({
    required String userId,
    required String token,
  }) = TokenRefreshedEvent;
}
