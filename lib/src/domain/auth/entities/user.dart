class User {
  final String? userId; // Identificador único del usuario (opcional)
  final String nombres; // Nombres del usuario
  final String apellidos; // Apellidos del usuario
  final String nombreUsuario; // Nombre de usuario para inicio de sesión
  final String?
      passwordHash; // Hash de la contraseña del usuario (por seguridad)
  final String email; // Correo electrónico del usuario
  final int? phoneNumber; // Número telefónico del usuario (opcional)

  User({
    required this.userId,
    required this.nombres,
    required this.apellidos,
    required this.nombreUsuario,
    this.passwordHash,
    required this.email,
    required this.phoneNumber,
  });
}
