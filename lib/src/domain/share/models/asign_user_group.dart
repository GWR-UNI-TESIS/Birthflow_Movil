import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';

/// Representa la asignación de usuarios o grupos a un partograma
/// con un tipo de permiso específico.
/// 
/// Se utiliza al momento de compartir un partograma, indicando qué 
/// usuarios/grupos tienen acceso y bajo qué permisos.
class AsignUserGroup {
  /// Identificador del partograma al que se asignan los usuarios/grupos.
  final String partographId;

  /// Identificador del tipo de permiso asignado.
  /// 
  /// Puede representar diferentes niveles de acceso 
  /// (ejemplo: lectura, edición, administración).
  final int permissionTypeId;

  /// Lista de usuarios o grupos a los que se les otorga el permiso.
  /// 
  /// Puede ser `null` si no se seleccionaron destinatarios.
  final List<SearchUserGroup>? searchUserGroupDtos;

  /// Constructor de la clase [AsignUserGroup].
  AsignUserGroup({
    required this.partographId,
    required this.permissionTypeId,
    required this.searchUserGroupDtos,
  });
}
