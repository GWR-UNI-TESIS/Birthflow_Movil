import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_user.freezed.dart';
part 'authentication_user.g.dart';

@freezed
class UserAuthentication with _$UserAuthentication {
  // Representa la información de un usuario autenticado
  const factory UserAuthentication({
    required String? id, // Identificador único del usuario (opcional)
    required String name, // Nombres del usuario
    required String secondName, // Apellidos del usuario
    required String userName, // Nombre de usuario para inicio de sesión
    required String email, // Correo electrónico del usuario
    int? phoneNumber, // Número telefónico del usuario (opcional)
    String? passwordHash, // Hash de la contraseña del usuario (por seguridad)
  }) = _UserAuthentication;

  // Crea una instancia de UserAuthentication a partir de un JSON
  factory UserAuthentication.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationFromJson(json);
}
