import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograma_response.freezed.dart';
part 'partograma_response.g.dart';


@freezed
class PartogramaResponse with _$PartogramaResponse {
  const factory PartogramaResponse({
    String? partogramaId,
    String? creadoPor,
    String? nombre,
    String? expediente,
    String? fecha,
    String? observacion,
    String? fechaCreacion,
    String? fechaModificacion,
    bool? eliminado,
  }) = _PartogramaResponse;

  factory PartogramaResponse.fromJson(Map<String, dynamic> json) =>
      _$PartogramaResponseFromJson(json);
}
