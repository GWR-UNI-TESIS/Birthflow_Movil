class FetalHeartRate {
  final int? id;
  final String partographId;
  final String value;
  final DateTime time;


  FetalHeartRate({
    this.id,
    required this.partographId,
    required this.value,
    required this.time,
  });
}
