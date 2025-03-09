class Notification {
  final int notificationId;
  final String title;
  final String message;
  final DateTime scheduledFor;
  final DateTime? createAt;
  final String? partographId;

  Notification({
    required this.notificationId,
    required this.title,
    required this.message,
    required this.scheduledFor,
    this.createAt,
    this.partographId,
  });
}
