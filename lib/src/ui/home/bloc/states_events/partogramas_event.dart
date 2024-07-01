import 'package:freezed_annotation/freezed_annotation.dart';

part 'partogramas_event.freezed.dart';

@freezed
class PartogramasEvent with _$PartogramasEvent {
  const factory PartogramasEvent.fetchPartogramas({String? userId}) =
      FetchPartogramas;
}
