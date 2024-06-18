import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_request.freezed.dart';

@freezed
class UserAuthRequest with _$UserAuthRequest {
  const factory UserAuthRequest({
    String? usuario,
    String? password,
    String? nombre,
    String? apellido,
    String? correo,
    String? telefono,
  }) = _UserAuthRequest;

  factory UserAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAuthRequestFromJson(json);
}
