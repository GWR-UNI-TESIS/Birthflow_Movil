import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_event.freezed.dart';

@freezed
class ChartEvent with _$ChartEvent {
  const factory ChartEvent.onRefresh({
    required Partograph partograph,
  }) = OnRefresh;
}
