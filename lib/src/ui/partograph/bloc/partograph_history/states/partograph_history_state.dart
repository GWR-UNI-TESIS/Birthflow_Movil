import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_history_state.freezed.dart';

@freezed
class PartographHistoryState with _$PartographHistoryState {
  const factory PartographHistoryState.initial() = Initial;
  const factory PartographHistoryState.loading() = Loading;
  const factory PartographHistoryState.loaded({
    required List<PartographVersion> versions,
    PartographVersion? selectedVersion,
    PartographVersion? previousVersion,
  }) = Loaded;
  const factory PartographHistoryState.error(String message) = Error;
}