/// Representa un partograma listado en el sistema.
/// 
/// Contiene información de identificación, estado, fechas de creación y 
/// actualización, así como configuraciones personalizadas del usuario 
/// (favorito, silenciado, archivado, etc.).
class PartographList {
  /// Identificador único del partograma.
  /// 
  /// Puede ser `null` en casos donde aún no se ha asignado.
  final String? partographId;

  /// Nombre principal del partograma (ejemplo: nombre del paciente).
  final String name;

  /// Nombre del registro asociado al partograma.
  final String recordName;

  /// Fecha del partograma (ejemplo: fecha de inicio del registro).
  final DateTime date;

  /// Observaciones asociadas al partograma.
  final String observation;

  /// Fecha de creación del registro.
  final DateTime? createdAt;

  /// Usuario que creó el registro.
  final String? createdBy;

  /// Fecha de la última actualización del registro.
  final DateTime? updateAt;

  /// Usuario que realizó la última actualización.
  final String? updateBy;

  /// Estado actual del partograma (referencia a catálogo).
  final int stateId;

  /// Identificador del usuario asociado al partograma.
  final String userId;

  /// Indica si el partograma está archivado.
  final bool isAchived;

  /// Indica si el partograma está marcado con la propiedad `set`.
  final bool set;

  /// Indica si el partograma está silenciado para notificaciones.
  final bool silenced;

  /// Indica si el partograma está marcado como favorito por el usuario.
  final bool favorite;

  /// Tipo de acceso al partograma (ejemplo: lectura, escritura, compartido).
  /// 
  /// Puede ser `null` si no se ha definido.
  final int? accessType;

  /// Constructor de la clase [PartographList].
  PartographList({
    this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    this.createdAt,
    this.createdBy,
    this.updateBy,
    this.updateAt,
    required this.stateId,
    required this.userId,
    required this.isAchived,
    required this.set,
    required this.silenced,
    required this.favorite,
    this.accessType,
  });

  /// Crea una copia de este [PartographList] permitiendo modificar 
  /// únicamente algunas propiedades sin afectar las demás.
  PartographList copyWith({
    bool? isAchived,
    bool? set,
    bool? silenced,
    bool? favorite,
  }) {
    return PartographList(
      partographId: partographId,
      name: name,
      recordName: recordName,
      date: date,
      observation: observation,
      createdAt: createdAt,
      createdBy: createdBy,
      updateAt: updateAt,
      updateBy: updateBy,
      stateId: stateId,
      userId: userId,
      isAchived: isAchived ?? this.isAchived,
      set: set ?? this.set,
      silenced: silenced ?? this.silenced,
      favorite: favorite ?? this.favorite,
      accessType: accessType,
    );
  }
}
