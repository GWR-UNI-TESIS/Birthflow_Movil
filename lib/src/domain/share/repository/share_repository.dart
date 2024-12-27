import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';

abstract class ShareRepository {
  Future<List<SearchUserGroup>?> getSearchUserGroup({
    required String query,
  });

  Future<AsignUserGroup?> asignUserGroup({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  });

  Future<AsignUserGroup?> getAsignUserGroup({
    required String partographId,
  });


  Future<PartographShare?> createPartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  Future<PartographShare?> updatePartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  Future<PartographShare?> deletePartographShare({
    required int id,
  });

  Future<Group?> createGroup({
    required String name,
  });

  Future<Group?> updateGroup({
    required int id,
    required String name,
  });

  Future<Group?> deleteGroup({
    required int id,
  });

  Future<PartographGroupItem?> createPartographGroupItem({
    required String partographId,
    required int partographGroupId,
  });

  Future<PartographGroupItem?> deletePartographGroupItem({
    required String partographId,
    required int partographGroupId,
  });

  Future<PartographGroup?> createPartographGroup({
    required String name,
    required String description,
  });

  Future<PartographGroup?> updatePartographGroup({
    required int id,
    required String name,
    required String description,
  });

  Future<PartographGroup?> deletePartographGroup({
    required int id,
  });

  Future<PartographGroupShare?> createPartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  Future<PartographGroupShare?> updatePartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  });

  Future<PartographGroupShare?> deletePartographGroupShare({
    required int id,
  });
}
