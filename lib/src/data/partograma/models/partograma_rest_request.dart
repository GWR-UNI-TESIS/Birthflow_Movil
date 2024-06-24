import 'package:freezed_annotation/freezed_annotation.dart';

part 'partograma_rest_request.freezed.dart';


@freezed
class PartogramaRequest with _$PartogramaRequest {
  const factory PartogramaRequest({
    String? PartogramaId,
    String? NombrePaciente,
    String? NExpediente,
    String? Fecha,
    String? Observacion,
  }) = _PartogramaRequest;

  factory PartogramaRequest.fromJson(Map<String, dynamic> json) =>
      _$PartogramaRequestFromJson(json);
}
