class MedicalSurveillanceTable {
  final int id;
  final String partographId;
  final String letter;
  final String maternalPosition;
  final String arterialPressure;
  final String maternalPulse;
  final String fetalHeartRate;
  final String contractionsDuration;
  final String frequencyContractions;
  final String pain;
  final DateTime time;

  MedicalSurveillanceTable({
    required this.id,
    required this.partographId,
    required this.letter,
    required this.maternalPosition,
    required this.arterialPressure,
    required this.maternalPulse,
    required this.fetalHeartRate,
    required this.contractionsDuration,
    required this.frequencyContractions,
    required this.pain,
    required this.time,
  });
}
