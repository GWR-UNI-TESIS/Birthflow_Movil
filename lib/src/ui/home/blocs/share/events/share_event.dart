import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_event.freezed.dart';

@freezed
abstract class ShareEvent with _$ShareEvent {
  const factory ShareEvent.getAsignUserGroup({required String partographId}) = GetAsignUserGroupEvent;
  const factory ShareEvent.asignUserGroup({
    required String partographId,
    required int permissionTypeId,
    required List<SearchUserGroup> searchUserGroupDtos,
  }) = AsignUserGroupEvent;
}
