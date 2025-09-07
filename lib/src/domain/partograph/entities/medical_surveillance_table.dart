/// Representa un registro de la tabla de vigilancia médica en el partograma.
/// 
/// Incluye información sobre las condiciones maternas y fetales en un momento 
/// específico durante el trabajo de parto.
class MedicalSurveillanceTable {
  /// Identificador único del registro en la tabla de vigilancia médica.
  final int id;

  /// Identificador del partograma al que pertenece este registro.
  final String partographId;

  /// Letra asignada para identificar la fila o el registro.
  final String letter;

  /// Posición materna durante la observación (ejemplo: decúbito lateral, de pie).
  final String maternalPosition;

  /// Presión arterial de la madre registrada (ejemplo: "120/80 mmHg").
  final String arterialPressure;

  /// Pulso materno registrado (en latidos por minuto).
  final String maternalPulse;

  /// Frecuencia cardíaca fetal registrada (en latidos por minuto).
  final String fetalHeartRate;

  /// Duración de las contracciones (ejemplo: "30s").
  final String contractionsDuration;

  /// Frecuencia de las contracciones (ejemplo: "3 en 10 min").
  final String frequencyContractions;

  /// Dolor percibido por la madre (ejemplo: leve, moderado, intenso).
  final String pain;

  /// Fecha y hora en que se realizó el registro de vigilancia.
  final DateTime time;

  /// Constructor de la clase [MedicalSurveillanceTable].
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
