import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_request.freezed.dart';
part 'user_info_request.g.dart';

@freezed
class UserInfoRequest with _$UserInfoRequest {
  // Representa la información de un usuario autenticado
  const factory UserInfoRequest({
    required String? id, // Identificador único del usuario (opcional)
    required String name, // Nombres del usuario
    required String secondName, // Apellidos del usuario
    required String userName, // Nombre de usuario para inicio de sesión
    required String email, // Correo electrónico del usuario
    int? phoneNumber, // Número telefónico del usuario (opcional)
  }) = _UserInfoRequest;

  // Crea una instancia de UserInfoRequest a partir de un JSON
  factory UserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UserInfoRequestFromJson(json);
}
