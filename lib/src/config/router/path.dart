enum RutasNavegacion { home, splash, login, register, auth, partograma }

extension RutasNavegacionExtension on RutasNavegacion {
  String get path {
    switch (this) {
      case RutasNavegacion.home:
        return '/';
      case RutasNavegacion.partograma:
        return '/partograma';
      case RutasNavegacion.login:
        return 'login';
      case RutasNavegacion.register:
        return 'register';
      default:
        return '/$name';
    }
  }
}
