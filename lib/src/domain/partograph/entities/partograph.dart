class Partograph {
  final String? partographId;
  final String name;
  final String recordName;
  final DateTime date;
  final String observation;
  final String workTime;
  Partograph({
    this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    required this.workTime,
  });
}
