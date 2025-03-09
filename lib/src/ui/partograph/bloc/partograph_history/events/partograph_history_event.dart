import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_history_event.freezed.dart';

@freezed
class PartographHistoryEvent with _$PartographHistoryEvent {
  const factory PartographHistoryEvent.fetchHistory(String partographId) =
      FetchHistory;
  const factory PartographHistoryEvent.selectVersion(
    PartographVersion version,
  ) = SelectVersion;
}
