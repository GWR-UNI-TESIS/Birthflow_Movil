import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_notifications_states.freezed.dart';

@freezed
class PartographNotificationState with _$PartographNotificationState {
  const factory PartographNotificationState.initial() = Initial;
  const factory PartographNotificationState.loading() = Loading;
  const factory PartographNotificationState.loaded({
    required List<Notification> notifications,
  }) = Loaded;
  const factory PartographNotificationState.error({
    required String message,
  }) = Error;
}
