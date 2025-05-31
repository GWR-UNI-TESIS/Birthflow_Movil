enum MaternalPosition {
  derecho('Lat. Derecho'),
  izquierdo('Lat. Izquierdo'),
  dorsal('Dorsal'),
  semisentada('Semisentada'),
  sentada('Sentada'),
  parada('Parada o Caminando');

  const MaternalPosition(this.value);

  final String value;
}

enum PainLocation {
  suprapublico('Suprapúbico'),
  sacro('Sacro');

  const PainLocation(this.value);

  final String value;
}

enum PainIntensity {
  fuerte('Fuerte'),
  normal('Normal'),
  debil('Debil');

  const PainIntensity(this.value);

  final String value;
}
