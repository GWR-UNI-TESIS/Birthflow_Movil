import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

/// Representa el resultado de un proceso de autenticación en la aplicación.
/// 
/// Contiene la información del usuario, mensajes descriptivos, un código de 
/// estado de autenticación y opcionalmente un token de acceso.
class Authentication {
  /// Usuario autenticado en el sistema.
  /// 
  /// Puede ser `null` si la autenticación no fue exitosa.
  final User? user;

  /// Mensaje descriptivo asociado al resultado de la autenticación.
  /// 
  /// Ejemplo: "Login exitoso", "Credenciales inválidas", etc.
  final String message;

  /// Código que representa el estado de la autenticación.
  final AuthenticationCode authenticationCode;

  /// Token de acceso otorgado al usuario tras una autenticación exitosa.
  /// 
  /// Puede ser `null` si no se generó token o la autenticación falló.
  final String? accessToken;

  /// Constructor de la clase [Authentication].
  Authentication({
    required this.user,
    required this.message,
    required this.authenticationCode,
    required this.accessToken,
  });
}

/// Define los posibles estados de la autenticación.
enum AuthenticationCode {
  /// Autenticación exitosa.
  success,

  /// El usuario no está autorizado (ejemplo: credenciales inválidas).
  unauthorized,

  /// Ocurrió un error inesperado en el proceso de autenticación.
  error,

  /// Estado inicial antes de iniciar el proceso de autenticación.
  init
}
