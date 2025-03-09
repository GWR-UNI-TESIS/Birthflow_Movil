import 'package:freezed_annotation/freezed_annotation.dart';

part 'partographs_event.freezed.dart';

@freezed
class PartographsEvent with _$PartographsEvent {
  const factory PartographsEvent.fetchPartographs({String? userId}) =
      FetchPartographs;

  const factory PartographsEvent.updatePartographState({
    required String partographId,
    required bool isAchived,
    required bool set,
    required bool silenced,
    required bool favorite,
  }) = UpdatePartographState;

   const factory PartographsEvent.deletePartographState({
    required String partographId,
  }) = DeletePartograph;
}
