/// Representa una nota de parto asociada a un partograma.
/// 
/// Contiene información detallada sobre el recién nacido y el proceso
/// de parto, incluyendo medidas, condiciones y observaciones médicas.
class ChildbirthNote {
  /// Identificador del partograma al que pertenece la nota.
  final String partographId;

  /// Descripción general u observaciones adicionales del parto.
  final String? description;

  /// Fecha en que ocurrió el parto.
  final String? date;

  /// Hora en que ocurrió el parto.
  final String? hour;

  /// Sexo del recién nacido.
  final String? sex;

  /// Peso del recién nacido (en gramos).
  final String? peso;

  /// Puntaje APGAR del recién nacido.
  final String? apgar;

  /// Temperatura registrada del recién nacido.
  final String? temperature;

  /// Presencia de caput succedaneum (hinchazón en la cabeza).
  final String? caputto;

  /// Indica si hubo circular de cordón umbilical.
  final String? circular;

  /// Estado del líquido amniótico.
  final String? lamniotico;

  /// Indica si hubo micción al nacer.
  final String? miccion;

  /// Indica si hubo expulsión de meconio.
  final String? meconio;

  /// Presión arterial de la madre durante el parto.
  final String? pa;

  /// Tiempo o fase del periodo expulsivo.
  final String? expulsivo;

  /// Estado de la placenta tras el parto.
  final String? placenta;

  /// Tiempo o condición del alumbramiento.
  final String? alumbramiento;

  /// Registro de la huella plantar del recién nacido.
  final String? huellaPlantar;

  /// Perímetro cefálico (PC) del recién nacido.
  final String? pc;

  /// Talla del recién nacido (en centímetros).
  final String? talla;

  /// Indica si se colocó brazalete identificativo.
  final String? brazalete;

  /// Registro de huella digital.
  final String? huellaDig;

  /// Constructor de la clase [ChildbirthNote].
  ChildbirthNote({
    required this.partographId,
    this.description,
    this.date,
    this.hour,
    this.sex,
    this.peso,
    this.apgar,
    this.temperature,
    this.caputto,
    this.circular,
    this.lamniotico,
    this.miccion,
    this.meconio,
    this.pa,
    this.expulsivo,
    this.placenta,
    this.alumbramiento,
    this.huellaPlantar,
    this.pc,
    this.talla,
    this.brazalete,
    this.huellaDig,
  });
}
