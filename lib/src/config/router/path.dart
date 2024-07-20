// ignore: avoid_classes_with_only_static_members
class RoutePaths {
  static final splash = RoutePath('splash', '/splash');
  static final home = RoutePath('home', '/home');
  static final createPartograph = RoutePath('createPartograph', 'createPartograph');
  static final auth = RoutePath('auth', '/auth');
  static final login = RoutePath('login', 'login');
  static final register = RoutePath('register', 'register');
  static final partograma = RoutePath('partograma', '/partograma');
}

class RoutePath {
  final String name;
  final String path;

  RoutePath(this.name, this.path);
}
