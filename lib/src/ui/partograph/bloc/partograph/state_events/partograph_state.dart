import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_state.freezed.dart';

@freezed
class PartographState with _$PartographState {
  const factory PartographState.initial() = Initial;
  const factory PartographState.loading() = Loading;
  const factory PartographState.empty() = Empty;
  const factory PartographState.loaded({
    required Partograph partograph,
    required String message,
  }) = Loaded;
  const factory PartographState.error(String errorMessage) = Error;
}
