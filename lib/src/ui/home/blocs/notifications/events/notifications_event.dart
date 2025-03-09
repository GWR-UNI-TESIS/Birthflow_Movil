import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_event.freezed.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.loadNotifications() = LoadNotifications;
  const factory NotificationsEvent.addNotification(Notification notification) = AddNotification;
}
