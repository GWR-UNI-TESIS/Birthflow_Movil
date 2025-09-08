/// Representa el resultado de una búsqueda de usuarios o grupos
/// al momento de asignar o compartir un partograma.
/// 
/// Puede ser un usuario individual o un grupo, dependiendo del valor en [type].
class SearchUserGroup {
  /// Nombre del usuario o grupo encontrado.
  final String name;

  /// Identificador único del usuario.
  /// 
  /// Puede ser `null` si el resultado corresponde a un grupo.
  final String? userId;

  /// Identificador único del grupo.
  /// 
  /// Puede ser `null` si el resultado corresponde a un usuario.
  final int? groupId;

  /// Tipo del resultado de búsqueda.
  /// 
  /// Puede indicar si se trata de un "user" o un "group".
  final String type;

  /// Constructor de la clase [SearchUserGroup].
  SearchUserGroup({
    required this.name,
    this.userId,
    this.groupId,
    required this.type,
  });
}
