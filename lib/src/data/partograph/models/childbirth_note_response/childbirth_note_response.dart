import 'package:freezed_annotation/freezed_annotation.dart';

part 'childbirth_note_response.freezed.dart';
part 'childbirth_note_response.g.dart';

@freezed
class ChildbirthNoteResponse with _$ChildbirthNoteResponse {
  const factory ChildbirthNoteResponse({
required String partographId,
    String? description,
    required String hour,
    required String sex,
    required String apgar,
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
    required DateTime createAt,
    DateTime? updateAt,
    DateTime? deleteAt,
    String? createdBy,
    String? updateBy,
    String? deleteBy,
  }) = _ChildbirthNoteResponse;

  factory ChildbirthNoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ChildbirthNoteResponseFromJson(json);
}
