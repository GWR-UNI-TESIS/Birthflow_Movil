/// Representa la relación entre un partograma y un grupo.
/// 
/// Se utiliza para indicar qué partogramas pertenecen a un grupo en particular.
class PartographGroupItem {
  /// Identificador del partograma asociado al grupo.
  final String partographId;

  /// Identificador del grupo al que pertenece el partograma.
  final int partographGroupId;

  /// Fecha y hora en que se realizó la asociación entre el partograma y el grupo.
  final DateTime createdAt;

  /// Constructor de la clase [PartographGroupItem].
  PartographGroupItem({
    required this.partographId,
    required this.partographGroupId,
    required this.createdAt,
  });
}
