import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_request.freezed.dart';
part 'user_register_request.g.dart';

@freezed
class UserRegisterRequest with _$UserRegisterRequest {
  // Representa la información para el registro de un nuevo usuario
  const factory UserRegisterRequest({
    String?
        id, // Identificador único del usuario (usualmente autogenerado por el servidor)
    required String name, // Nombres del usuario
    required String secondName, // Apellidos del usuario
    required String userName, // Nombre de usuario para inicio de sesión
    required String email, // Correo electrónico del usuario
    double? phoneNumber, // Número telefónico del usuario (opcional)
    }) = _UserRegisterRequest;

  // Crea una instancia de UserRegisterRequest a partir de un JSON
  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterRequestFromJson(json);
}
