import 'package:birthflow_movil/src/core/models/api_reponse/api_response.dart';
import 'package:birthflow_movil/src/data/share/model/search_user_group_response/search_user_group_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

part 'share_service.g.dart';

@RestApi()
abstract class ShareService {
  factory ShareService(Dio dio, {String baseUrl}) = _ShareService;

  @GET('/api/share/search-user-group?query={query}')
  Future<ApiResponse<List<SearchUserGroupResponse>>> getSearchUserGroup(
    @Header('Authorization') String token,
    @Path('query') String query,
  );
}
