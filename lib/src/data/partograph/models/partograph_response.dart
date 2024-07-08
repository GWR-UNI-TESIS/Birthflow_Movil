import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograph_response.freezed.dart';
part 'partograph_response.g.dart';


@freezed
class PartographResponse with _$PartographResponse {
  const factory PartographResponse({
    String? partogramaId,
    String? creadoPor,
    String? nombre,
    String? expediente,
    String? fecha,
    String? observacion,
    String? fechaCreacion,
    String? fechaModificacion,
    bool? eliminado,
  }) = _PartographResponse;

  factory PartographResponse.fromJson(Map<String, dynamic> json) =>
      _$PartographResponseFromJson(json);
}
