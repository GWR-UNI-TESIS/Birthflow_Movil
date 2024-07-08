enum RoutePaths { home, splash, login, register, auth, partograma }

extension RoutePathsExtension on RoutePaths {
  String get path {
    switch (this) {
      case RoutePaths.home:
        return '/';
      case RoutePaths.partograma:
        return '/partograma';
      case RoutePaths.login:
        return 'login';
      case RoutePaths.register:
        return 'register';
      default:
        return '/$name';
    }
  }
}
