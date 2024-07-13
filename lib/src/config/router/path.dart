enum RoutePaths { home, splash, login, register, auth, partograma, createPartograph }

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
      case RoutePaths.createPartograph:
        return 'createPartograph';
      default:
        return '/$name';
    }
  }
}
