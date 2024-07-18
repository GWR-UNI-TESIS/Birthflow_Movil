import 'package:freezed_annotation/freezed_annotation.dart';

part 'partographs_event.freezed.dart';

@freezed
class PartographsEvent with _$PartographsEvent {
  const factory PartographsEvent.fetchPartographs({String? userId}) =
      FetchPartographs;
}
