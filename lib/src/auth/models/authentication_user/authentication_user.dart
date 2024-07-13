import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_user.freezed.dart';
part 'authentication_user.g.dart';

@freezed
class UserAuthentication with _$UserAuthentication {

   // Representa la información de un usuario autenticado
  const factory UserAuthentication({
    required int? id, // Identificador único del usuario (opcional)
    required String nombres, // Nombres del usuario
    required String apellidos, // Apellidos del usuario
    required String nombreUsuario, // Nombre de usuario para inicio de sesión
    required String passwordHash, // Hash de la contraseña del usuario (por seguridad)
    required String email, // Correo electrónico del usuario
    String? phoneNumber, // Número telefónico del usuario (opcional)
    required bool isDelete, // Indica si el usuario está eliminado (marcado para borrado)
    String? createdAt, // Fecha y hora de creación del usuario (viene del servidor)
    int? createdBy, // Identificador del usuario que creó este registro (viene del servidor)
    String? updatedAt, // Fecha y hora de última actualización del usuario (viene del servidor)
    String? deletedAt, // Fecha y hora de eliminación del usuario (viene del servidor)
    String? deletedBy, // Identificador del usuario que eliminó este registro (viene del servidor)
  }) = _UserAuthentication;

  // Crea una instancia de UserAuthentication a partir de un JSON
  factory UserAuthentication.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationFromJson(json);
}
