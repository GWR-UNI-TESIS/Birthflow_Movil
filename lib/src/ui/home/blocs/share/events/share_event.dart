import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_event.freezed.dart';

@freezed
class ShareEvent with _$ShareEvent {
  const factory ShareEvent.init() = Init;
  const factory ShareEvent.searchUsersGroup({required String query}) = SearchUsersGroups;
}
