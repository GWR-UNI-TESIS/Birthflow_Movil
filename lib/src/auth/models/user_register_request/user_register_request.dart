import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_request.freezed.dart';
part 'user_register_request.g.dart';

@freezed
class UserRegisterRequest with _$UserRegisterRequest {

  // Representa la información para el registro de un nuevo usuario
  const factory UserRegisterRequest({
  required int id, // Identificador único del usuario (usualmente autogenerado por el servidor)
    required String nombres, // Nombres del usuario
    required String apellidos, // Apellidos del usuario
    required String nombreUsuario, // Nombre de usuario para inicio de sesión
    required String email, // Correo electrónico del usuario
    int? phoneNumber, // Número telefónico del usuario (opcional)
    required String passwordHash, // Hash de la contraseña del usuario (por seguridad)
  }) = _UserRegisterRequest;

  // Crea una instancia de UserRegisterRequest a partir de un JSON
  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterRequestFromJson(json);
}
