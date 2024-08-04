import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_event.freezed.dart';

@freezed
class PartographEvent with _$PartographEvent {
  const factory PartographEvent.onFetchData({
    required String partographId,
  }) = onFetchData;
  const factory PartographEvent.saveCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  }) = SaveCervicalDilation;

  const factory PartographEvent.updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  }) = UpdateCervicalDilation;

  const factory PartographEvent.deleteCervicalDilation({
    required int id,
    required String userId,
  }) = DeleteCervicalDilation;
}
