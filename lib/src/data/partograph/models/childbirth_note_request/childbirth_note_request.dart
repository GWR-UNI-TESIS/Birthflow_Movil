import 'package:freezed_annotation/freezed_annotation.dart';

part 'childbirth_note_request.freezed.dart';
part 'childbirth_note_request.g.dart';

@freezed
class ChildbirthNoteRequest with _$ChildbirthNoteRequest {
  const factory ChildbirthNoteRequest({
    required String partographId,
    String? description,
    required String date,
    required String hour,
    required String sex,
    required String apgar,
    required String peso,
    required String temperature,
    required String caputto,
    required String circular,
    required String lamniotico,
    required String miccion,
    required String meconio,
    required String pa,
    required String expulsivo,
    required String placenta,
    required String alumbramiento,
    required String huellaPlantar,
    required String pc,
    required String talla,
    required String brazalete,
    required String huellaDig,
  }) = _ChildbirthNoteRequest;

  factory ChildbirthNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$ChildbirthNoteRequestFromJson(json);
}
