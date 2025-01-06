import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birthflow_movil/src/data/notification/mappers/notification_mapper.auto_mappr.dart';
import 'package:birthflow_movil/src/data/notification/models/notification_response/notification_response.dart';
import 'package:birthflow_movil/src/domain/notification/models/notification.dart';


@AutoMappr([
  MapType<NotificationResponse, Notification>(),

])
class NotificationMapper extends $NotificationMapper {}
