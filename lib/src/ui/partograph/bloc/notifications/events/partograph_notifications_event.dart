import 'package:freezed_annotation/freezed_annotation.dart';
part 'partograph_notifications_event.freezed.dart';

@freezed
class PartographNotificationEvent with _$PartographNotificationEvent {
  const factory PartographNotificationEvent.getNotifications({
    required String partographId,
  }) = GetNotifications;
}
