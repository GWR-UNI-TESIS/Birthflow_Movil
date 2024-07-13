import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

// Clase sellada definida con Freezed para representar la respuesta de una API
@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  // Constructor para una respuesta exitosa o fallida
  const factory ApiResponse({
    // Código de estado de la respuesta de la API (requerido)
    required int statusCode,
    // Mensaje de la respuesta de la API (requerido)
    required String message,
    // Objeto de datos de la respuesta (requerido)
    T? response,
  }) = _ApiResponse<T>;

  // Constructor para deserializar la respuesta de un JSON
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
