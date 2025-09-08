/// Representa la entidad de un usuario dentro del sistema.
/// 
/// Contiene información básica de identificación, credenciales de acceso
/// y datos de contacto.
class User {
  /// Identificador único del usuario.
  /// 
  /// Puede ser `null` en casos donde aún no se ha asignado (ejemplo: al crear un nuevo usuario).
  final String? id;

  /// Nombres del usuario.
  final String name;

  /// Apellidos del usuario.
  final String secondName;

  /// Nombre de usuario utilizado para el inicio de sesión.
  final String userName;

  /// Hash de la contraseña del usuario.
  /// 
  /// Por motivos de seguridad nunca se almacena la contraseña en texto plano.
  final String? passwordHash;

  /// Correo electrónico del usuario.
  final String email;

  /// Número telefónico del usuario.
  /// 
  /// Puede ser `null` si el usuario no ha registrado un número.
  final int? phoneNumber;

  /// Constructor de la clase [User].
  User({
    required this.id,
    required this.name,
    required this.secondName,
    required this.userName,
    this.passwordHash,
    required this.email,
    required this.phoneNumber,
  });
}
