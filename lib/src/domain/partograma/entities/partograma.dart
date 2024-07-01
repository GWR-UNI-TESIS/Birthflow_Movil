class Partograma {
  final String partogramaId;
  final String creadoPor;
  final String nombre;
  final String expediente;
  final DateTime fecha;
  final String observacion;
  final DateTime fechaCreacion;
  final DateTime fechaModificacion;
  final bool eliminado;

  Partograma({
    required this.partogramaId,
    required this.creadoPor,
    required this.nombre,
    required this.expediente,
    required this.fecha,
    required this.observacion,
    required this.fechaCreacion,
    required this.fechaModificacion,
    required this.eliminado,
  });
}
