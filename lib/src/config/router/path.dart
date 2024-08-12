// ignore: avoid_classes_with_only_static_members
import 'package:go_router_paths/go_router_paths.dart';

/*
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
}*/

// ignore: avoid_classes_with_only_static_members
class AppPaths {
  static Path get splash => Path('splash');
  static WelcomePath get welcome => WelcomePath();
  static HomePath get home => HomePath();
}

class WelcomePath extends Path<WelcomePath> {
  WelcomePath() : super('welcome');

  Path get login => Path('login', parent: this);
  Path get register => Path('register', parent: this);
}

class HomePath extends Path<HomePath> {
  HomePath() : super('home');

  Path get search => Path('search', parent: this);
  Path get create => Path('create-partograph', parent: this);

  PartographPath get partographPath => PartographPath(this);
}

class PartographPath extends Param<PartographPath> {
  PartographPath(HomePath homePath)
      : super.only('partographId', parent: homePath);

  CervicalDilationPath get cervicalDilationList => CervicalDilationPath(this);
}

class CervicalDilationPath extends Path<CervicalDilationPath> {
  CervicalDilationPath(PartographPath partographPath)
      : super('cervical-dilation-list', parent: partographPath);
  Path get create => Path('create', parent: this);
  Path get edit => Path('edit', parent: this);
}
