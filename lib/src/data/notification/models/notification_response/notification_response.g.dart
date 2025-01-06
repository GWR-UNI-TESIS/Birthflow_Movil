// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseImpl _$$NotificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationResponseImpl(
      notificationId: (json['notificationId'] as num).toInt(),
      title: json['title'] as String,
      message: json['message'] as String,
      scheduledFor: DateTime.parse(json['scheduledFor'] as String),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      partographId: json['partographId'] as String?,
    );

Map<String, dynamic> _$$NotificationResponseImplToJson(
        _$NotificationResponseImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'title': instance.title,
      'message': instance.message,
      'scheduledFor': instance.scheduledFor.toIso8601String(),
      'createAt': instance.createAt?.toIso8601String(),
      'partographId': instance.partographId,
    };
