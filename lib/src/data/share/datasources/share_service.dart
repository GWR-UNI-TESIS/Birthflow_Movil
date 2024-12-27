import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
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
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'share_service.g.dart';

@RestApi()
abstract class ShareService {
  factory ShareService(Dio dio, {String baseUrl}) = _ShareService;

  @GET('/api/share/search-user-group')
  Future<ApiResponse<List<SearchUserGroupResponse>>> getSearchUserGroup(
    @Header('Authorization') String token,
    @Query('query') String query,
  );

  @POST('/api/share/partograph-share/create')
  Future<ApiResponse<PartographShareResponse>> createPartographShare(
    @Header('Authorization') String token,
    @Body() PartographShareRequest body,
  );

  @PATCH('/api/share/partograph-share/update')
  Future<ApiResponse<PartographShareResponse>> updatePartographShare(
    @Header('Authorization') String token,
    @Body() PartographShareRequest body,
  );

  @DELETE('/api/share/partograph-share/delete')
  Future<ApiResponse<PartographShareResponse>> deletePartographShare(
    @Header('Authorization') String token,
    @Body() PartographShareRequest body,
  );

  @POST('/api/share/group/create')
  Future<ApiResponse<GroupResponse>> createGroup(
    @Header('Authorization') String token,
    @Body() GroupRequest body,
  );

  @PATCH('/api/share/group/update')
  Future<ApiResponse<GroupResponse>> updateGroup(
    @Header('Authorization') String token,
    @Body() GroupRequest body,
  );

  @DELETE('/api/share/group/delete')
  Future<ApiResponse<GroupResponse>> deleteGroup(
    @Header('Authorization') String token,
    @Body() GroupRequest body,
  );

   @POST('/api/share/partograph-group-item/create')
  Future<ApiResponse<PartographGroupItemResponse>> createPartographGroupItem(
    @Header('Authorization') String token,
    @Body() PartographGroupItemRequest body,
  );

  @DELETE('/api/share/partograph-group-item/delete')
  Future<ApiResponse<PartographGroupItemResponse>> deletPartographGroupItem(
    @Header('Authorization') String token,
    @Body() PartographGroupItemRequest body,
  );  

  @POST('/api/share/partograph-group/create')
  Future<ApiResponse<PartographGroupResponse>> createPartographGroup(
    @Header('Authorization') String token,
    @Body() PartographGroupRequest body,
  );

  @PATCH('/api/share/partograph-group/update')
  Future<ApiResponse<PartographGroupResponse>> updatePartographGroup(
    @Header('Authorization') String token,
    @Body() PartographGroupRequest body,
  );

  @DELETE('/api/share/partograph-group/delete')
  Future<ApiResponse<PartographGroupResponse>> deletePartographGroup(
    @Header('Authorization') String token,
    @Body() PartographGroupRequest body,
  );

  @POST('/api/share/partograph-group-share/create')
  Future<ApiResponse<PartographGroupShareResponse>> createPartographGroupShare(
    @Header('Authorization') String token,
    @Body() PartographGroupShareRequest body,
  );

  @PATCH('/api/share/partograph-group-share/update')
  Future<ApiResponse<PartographGroupShareResponse>> updatePartographGroupShare(
    @Header('Authorization') String token,
    @Body() PartographGroupShareRequest body,
  );

  @DELETE('/api/share/partograph-group-share/delete')
  Future<ApiResponse<PartographGroupShareResponse>> deletePartographGroupShare(
    @Header('Authorization') String token,
    @Body() PartographGroupShareRequest body,
  );
}
