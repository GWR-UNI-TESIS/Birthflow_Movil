// Enumeración para definir las rutas de la aplicación
enum RoutePaths {
  home,
  splash,
  login,
  register,
  auth,
  partograma,
  createPartograph
}

// Extensión para el enum RoutePaths que permite obtener la ruta como string
extension RoutePathsExtension on RoutePaths {
  // Devuelve la ruta como string en base al valor del enum
  String get path {
    switch (this) {
      case RoutePaths.home:
        // Ruta principal de la aplicación
        return '/';
      case RoutePaths.partograma:
        // Ruta del partograma
        return '/partograma';
      case RoutePaths.login:
        // Ruta de login
        return 'login';
      case RoutePaths.register:
        // Ruta de registro
        return 'register';
      case RoutePaths.createPartograph:
        // Ruta para crear un partograma
        return 'createPartograph';
      default:
        // Ruta por defecto para el resto de los valores del enum
        // Se construye la ruta con "/nombreDelEnum"
        return '/$name';
    }
  }
}
