import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';

/// Repositorio de compartición y grupos (usuarios, grupos y permisos).
abstract class ShareRepository {
  // ---- Búsquedas ----

  /// Busca usuarios/grupos por texto (para asignación).
  Future<List<SearchUserGroup>?> getSearchUserGroup({
    required String query,
  });

  /// Busca solo usuarios por texto.
  Future<List<SearchUserGroup>?> getSearchUsers({
    required String query,
  });

  // ---- Asignación de permisos a usuarios sobre un partograma ----

  /// Asigna permisos a una lista de usuarios para un partograma.
  Future<AsignUserGroup?> asignUserGroup({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  });

  /// Obtiene las asignaciones actuales del partograma.
  Future<AsignUserGroup?> getAsignUserGroup({
    required String partographId,
  });

  // ---- Compartir partograma con usuario (registro individual) ----

  /// Crea un registro de compartición de partograma con un usuario.
  Future<PartographShare?> createPartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  /// Actualiza un registro de compartición.
  Future<PartographShare?> updatePartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  /// Elimina un registro de compartición por id.
  Future<PartographShare?> deletePartographShare({
    required int id,
  });

  // ---- Grupos (catálogo y membresías) ----

  /// Lista de grupos disponibles.
  Future<List<Group>?> getGroups();

  /// Crea un grupo.
  Future<Group?> createGroup({
    required String name,
  });

  /// Renombra/actualiza un grupo.
  Future<Group?> updateGroup({
    required int id,
    required String name,
  });

  /// Elimina un grupo.
  Future<Group?> deleteGroup({
    required int id,
  });

  /// Usuarios que pertenecen a un grupo.
  Future<List<User>?> getUsersInGroup({
    required int groupId,
  });

  /// Agrega un usuario a un grupo.
  Future<void> createUserGroup({
    required String userId,
    required int groupId,
  });

  /// Quita un usuario de un grupo.
  Future<void> deleteUserGroup({
    required String userId,
    required int groupId,
  });

  // ---- Agrupación de partogramas (listas/colecciones) ----

  /// Añade un partograma a un grupo de partogramas.
  Future<PartographGroupItem?> createPartographGroupItem({
    required String partographId,
    required int partographGroupId,
  });

  /// Quita un partograma del grupo.
  Future<PartographGroupItem?> deletePartographGroupItem({
    required String partographId,
    required int partographGroupId,
  });

  /// Lista grupos de partogramas.
  Future<List<PartographGroup>?> getPartographGroups();

  /// Crea un grupo de partogramas.
  Future<PartographGroup?> createPartographGroup({
    required String name,
    required String description,
  });

  /// Actualiza un grupo de partogramas.
  Future<PartographGroup?> updatePartographGroup({
    required int id,
    required String name,
    required String description,
  });

  /// Elimina un grupo de partogramas.
  Future<PartographGroup?> deletePartographGroup({
    required int id,
  });

  // ---- Compartir grupo de partogramas con usuario ----

  /// Crea un registro de compartición de un grupo de partogramas.
  Future<PartographGroupShare?> createPartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  /// Actualiza un registro de compartición de grupo.
  Future<PartographGroupShare?> updatePartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  /// Elimina un registro de compartición de grupo.
  Future<PartographGroupShare?> deletePartographGroupShare({
    required int id,
  });
}
