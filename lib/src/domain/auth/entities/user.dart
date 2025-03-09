class User {
  final String? id; // Identificador único del usuario (opcional)
  final String name; // Nombres del usuario
  final String secondName; // Apellidos del usuario
  final String userName; // Nombre de usuario para inicio de sesión
  final String?
      passwordHash; // Hash de la contraseña del usuario (por seguridad)
  final String email; // Correo electrónico del usuario
  final int? phoneNumber; // Número telefónico del usuario (opcional)

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
