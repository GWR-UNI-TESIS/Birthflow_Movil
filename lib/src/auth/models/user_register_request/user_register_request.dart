import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_request.freezed.dart';
part 'user_register_request.g.dart';

@freezed
class UserRegisterRequest with _$UserRegisterRequest {
  const factory UserRegisterRequest({
    required int id,
    required String nombres,
    required String apellidos,
    required String nombreUsuario,
    required String email,
    int? phoneNumber,
    required String passwordHash,
  }) = _UserRegisterRequest;

  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterRequestFromJson(json);
}
