import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required String statusMessage,
    T? response,
    required String status,
  }) = _ApiResponse<T>;
  

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);

}
