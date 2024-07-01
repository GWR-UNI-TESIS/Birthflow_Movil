import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'partogramas_state.freezed.dart';

@freezed
class PartogramasState with _$PartogramasState {
  const factory PartogramasState.initial() = Initial;
  const factory PartogramasState.loading() = Loading;
  const factory PartogramasState.empty() = Empty;
  const factory PartogramasState.loaded(List<Partograma> data) = Loaded;
  const factory PartogramasState.error(String errorMessage) = Error;
}
