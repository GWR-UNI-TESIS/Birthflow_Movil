import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_partograph_state.freezed.dart';

@freezed
class CreatePartographState with _$CreatePartographState {
  const factory CreatePartographState.initial() = Initial;
  const factory CreatePartographState.loading() = Loading;
  const factory CreatePartographState.isSaved({
    String? partographId,
    required String message,
  }) = IsSaved;
  const factory CreatePartographState.error(String errorMessage) = Error;
}
