import 'package:birthflow_movil/src/core/chart/models/chart_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_state.freezed.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState.initial() = Initial;
  const factory ChartState.loading() = Loading;
  const factory ChartState.loaded({
    required ChartData chartData,
    required DateTime firstItem,
  }) = Loaded;
  const factory ChartState.error(String errorMessage) = Error;
}
