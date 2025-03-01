import 'package:freezed_annotation/freezed_annotation.dart';

part 'childbirth_note_response.freezed.dart';
part 'childbirth_note_response.g.dart';

@freezed
class ChildbirthNoteResponse with _$ChildbirthNoteResponse {
  const factory ChildbirthNoteResponse({
    required String partographId,
    String? description,
    String? hour,
    String? sex,
    String? apgar,
    String? temperature,
    String? caputto,
    String? circular,
    String? lamniotico,
    String? miccion,
    String? meconio,
    String? pa,
    String? expulsivo,
    String? placenta,
    String? alumbramiento,
    String? huellaPlantar,
    String? pc,
    String? talla,
    String? brazalete,
    String? huellaDig,
  }) = _ChildbirthNoteResponse;

  factory ChildbirthNoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ChildbirthNoteResponseFromJson(json);
}
