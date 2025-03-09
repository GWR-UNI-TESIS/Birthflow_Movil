import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = NotificationsInitial;
  const factory NotificationsState.loading() = NotificationsLoading;
  const factory NotificationsState.loaded({
    required List<Notification> notifications,
  }) = NotificationsLoaded;
  const factory NotificationsState.error(String message) = NotificationsError;
}
