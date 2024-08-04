// ignore: avoid_classes_with_only_static_members
class RoutePaths {
  static final splash = RoutePath('splash', '/splash');
  static final home = RoutePath('home', '/home');
  static final search = RoutePath('search', 'search');
  static final createPartograph =
      RoutePath('createPartograph', 'createPartograph');
  static final auth = RoutePath('auth', '/auth');
  static final login = RoutePath('login', 'login');
  static final register = RoutePath('register', 'register');
  static final partograma = RoutePath('partograma', 'partograma');
  static final cervicalDilationList =
      RoutePath('cervicalDilationList', 'cervicalDilationList');
  static final cervicalDilation =
      RoutePath('cervicalDilation', 'cervicalDilation');
}

class RoutePath {
  final String name;
  final String path;

  RoutePath(this.name, this.path);
}
