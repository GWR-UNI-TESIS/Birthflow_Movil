import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birthflow_movil/src/data/share/mappers/mapper.auto_mappr.dart';
import 'package:birthflow_movil/src/data/share/model/asign_user_group_response/asign_user_group_response.dart';
import 'package:birthflow_movil/src/data/share/model/group_response/group_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_item_response/partograph_group_item_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_response/partograph_group_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_group_share_response/partograph_group_share_response.dart';
import 'package:birthflow_movil/src/data/share/model/partograph_share_response/partograph_share_response.dart';
import 'package:birthflow_movil/src/data/share/model/search_user_group_response/search_user_group_response.dart';
import 'package:birthflow_movil/src/domain/share/models/asign_user_group.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_item.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_group_share.dart';
import 'package:birthflow_movil/src/domain/share/models/partograph_share.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';

// Configuración del mapper
@AutoMappr([
  MapType<PartographShareResponse, PartographShare>(),
  MapType<GroupResponse, Group>(),
  MapType<PartographGroupItemResponse, PartographGroupItem>(),
  MapType<PartographGroupResponse, PartographGroup>(),
  MapType<PartographGroupShareResponse, PartographGroupShare>(),
  MapType<SearchUserGroupResponse, SearchUserGroup>(),
  MapType<AsignUserGroupResponse, AsignUserGroup>(),

  MapType<SearchUserGroup, SearchUserGroupResponse>(),
])
class ShareApiMapper extends $ShareApiMapper {}
