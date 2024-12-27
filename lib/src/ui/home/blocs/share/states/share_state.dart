import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_state.freezed.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.loading() = ShareLoading;
  const factory ShareState.empty() = ShareEmpty;
  const factory ShareState.loaded({required List<SearchUserGroup> groups}) = ShareLoaded;
  const factory ShareState.error({required String message}) = ShareError;
}
