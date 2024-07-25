import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_partograph_event.freezed.dart';

@freezed
class CreatePartographEvent with _$CreatePartographEvent {
  const factory CreatePartographEvent.save({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  }) = Save;
}
