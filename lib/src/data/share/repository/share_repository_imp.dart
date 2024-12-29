import 'package:birthflow_movil/src/data/auth/models/authentication_user/authentication_user.dart';
import 'package:birthflow_movil/src/data/share/datasources/share_service.dart';
import 'package:birthflow_movil/src/data/share/mappers/mapper.dart';
import 'package:birthflow_movil/src/data/share/model/asign_user_group_response/asign_user_group_response.dart';
import 'package:birthflow_movil/src/data/share/model/group_request/group_request.dart';
import 'package:birthflow_movil/src/data/share/model/group_response/group_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_item_request/partograph_group_item_request.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_item_response/partograph_group_item_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_request/partograph_group_request.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_response/partograph_group_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_share_request/partograph_group_share_request.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_share_response/partograph_group_share_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_share_request/partograph_share_request.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_share_response/partograph_share_response.dart';
import 'package:birthflow_movil/src/data/share/model/search_user_group_response/search_user_group_response.dart';
import 'package:birthflow_movil/src/data/share/model/user_group_request/user_group_request.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class ShareRepositoryImplementation implements ShareRepository {
  final ShareService _shareService;
  final TokenStorage _tokenStorage = TokenStorage();
  final Logger _logger = Logger();
  final ShareApiMapper _mapper = ShareApiMapper();

  ShareRepositoryImplementation({required ShareService shareService})
      : _shareService = shareService;

  @override
  Future<List<SearchUserGroup>?> getSearchUserGroup({
    required String query,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _shareService.getSearchUserGroup(token, query);

      if (result.response == null) return null;

      return _mapper.convertList<SearchUserGroupResponse, SearchUserGroup>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<SearchUserGroup>?> getSearchUsers({required String query}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _shareService.getSearchUsers(token, query);

      if (result.response == null) return null;

      return _mapper.convertList<SearchUserGroupResponse, SearchUserGroup>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<AsignUserGroup?> asignUserGroup({
    required String partographId,
    required int permissionTypeId,
    List<SearchUserGroup>? searchUserGroupDtos,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final list =
          _mapper.convertList<SearchUserGroup, SearchUserGroupResponse>(
        searchUserGroupDtos!,
      );

      final request = AsignUserGroupResponse(
        partographId: partographId,
        permissionTypeId: permissionTypeId,
        searchUserGroupDtos: list,
      );

      final result = await _shareService.asignUsersGroups(token, request);

      if (result.response == null) return null;

      return _mapper.convert<AsignUserGroupResponse, AsignUserGroup>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<AsignUserGroup?> getAsignUserGroup({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';
      final result =
          await _shareService.getAsignUsersGroups(token, partographId);

      if (result.response == null) return null;

      return _mapper.convert<AsignUserGroupResponse, AsignUserGroup>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<Group>?> getGroups() async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _shareService.getGroups(token);

      if (result.response == null) return null;

      return _mapper.convertList<GroupResponse, Group>(result.response!);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<List<PartographGroup>?> getPartographGroups() async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _shareService.getPartographGroups(token);

      if (result.response == null) return null;

      return _mapper.convertList<PartographGroupResponse, PartographGroup>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<void> createUserGroup(
      {required String userId, required int groupId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = UserGroupRequest(userId: userId, groupId: groupId);

      await _shareService.createUserGroup(token, request);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
    }
  }

  @override
  Future<void> deleteUserGroup(
      {required String userId, required int groupId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = UserGroupRequest(userId: userId, groupId: groupId);

      await _shareService.deleteUserGroup(token, request);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
    }
  }

  @override
  Future<List<User>?> getUsersInGroup({required int groupId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _shareService.getUsersInGroup(token, groupId);

      if (result.response == null) return null;

      return _mapper.convertList<UserAuthentication, User>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<Group?> createGroup({
    required String name,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = GroupRequest(
        id: 0,
        groupName: name,
      );

      final result = await _shareService.createGroup(token, request);

      if (result.response == null) return null;

      return _mapper.convert<GroupResponse, Group>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroup?> createPartographGroup({
    required String name,
    required String description,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupRequest(
        // ignore: avoid_redundant_argument_values
        id: 0,
        name: name,
        description: description,
      );

      final result = await _shareService.createPartographGroup(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupResponse, PartographGroup>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroupItem?> createPartographGroupItem({
    required String partographId,
    required int partographGroupId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupItemRequest(
        partographId: partographId,
        partographGroupId: partographGroupId,
      );

      final result =
          await _shareService.createPartographGroupItem(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographGroupItemResponse, PartographGroupItem>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroupShare?> createPartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupShareRequest(
        id: 0,
        partographGroupId: partographGroupId,
        userId: userId,
        groupId: groupId,
        permissionTypeId: permissionTypeId,
      );

      final result =
          await _shareService.createPartographGroupShare(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupShareResponse, PartographGroupShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographShare?> createPartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographShareRequest(
        id: 0,
        partographId: partographId,
        userId: userId,
        groupId: groupId,
        permissionTypeId: permissionTypeId,
      );

      final result = await _shareService.createPartographShare(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographShareResponse, PartographShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<Group?> deleteGroup({required int id}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = GroupRequest(
        id: id,
        groupName: '',
      );

      final result = await _shareService.deleteGroup(token, request);

      if (result.response == null) return null;

      return _mapper.convert<GroupResponse, Group>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroup?> deletePartographGroup({required int id}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupRequest(
        // ignore: avoid_redundant_argument_values
        id: id,
        name: '',
        description: '',
      );

      final result = await _shareService.deletePartographGroup(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupResponse, PartographGroup>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroupItem?> deletePartographGroupItem({
    required String partographId,
    required int partographGroupId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupItemRequest(
        partographId: partographId,
        partographGroupId: partographGroupId,
      );

      final result =
          await _shareService.deletPartographGroupItem(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographGroupItemResponse, PartographGroupItem>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroupShare?> deletePartographGroupShare({
    required int id,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupShareRequest(
        id: id,
        partographGroupId: 0,
        userId: '',
        groupId: 0,
        permissionTypeId: 0,
      );

      final result =
          await _shareService.deletePartographGroupShare(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupShareResponse, PartographGroupShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographShare?> deletePartographShare({required int id}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographShareRequest(
        id: id,
        partographId: '',
        userId: '',
        groupId: 0,
        permissionTypeId: 0,
      );

      final result = await _shareService.deletePartographShare(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographShareResponse, PartographShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<Group?> updateGroup({
    required int id,
    required String name,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = GroupRequest(
        id: id,
        groupName: name,
      );

      final result = await _shareService.updateGroup(token, request);

      if (result.response == null) return null;

      return _mapper.convert<GroupResponse, Group>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroup?> updatePartographGroup({
    required int id,
    required String name,
    required String description,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupRequest(
        id: id,
        name: name,
        description: description,
      );

      final result = await _shareService.updatePartographGroup(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupResponse, PartographGroup>(result.response);
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographGroupShare?> updatePartographGroupShare({
    int? id,
    required int partographGroupId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographGroupShareRequest(
        id: id,
        partographGroupId: partographGroupId,
        userId: userId,
        groupId: groupId,
        permissionTypeId: permissionTypeId,
      );

      final result =
          await _shareService.updatePartographGroupShare(token, request);

      if (result.response == null) return null;

      return _mapper
          .convert<PartographGroupShareResponse, PartographGroupShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }

  @override
  Future<PartographShare?> updatePartographShare({
    int? id,
    required String partographId,
    required String userId,
    required int groupId,
    required int permissionTypeId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final request = PartographShareRequest(
        id: 0,
        partographId: partographId,
        userId: userId,
        groupId: groupId,
        permissionTypeId: permissionTypeId,
      );

      final result = await _shareService.updatePartographShare(token, request);

      if (result.response == null) return null;

      return _mapper.convert<PartographShareResponse, PartographShare>(
        result.response,
      );
    } catch (e, stackTrace) {
      _logger.e('Share exception', error: e, stackTrace: stackTrace);
      return null;
    }
  }
}
