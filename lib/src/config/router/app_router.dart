import 'package:auto_route/auto_route.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  
  
  
  @override
  List<AutoRoute> get routes => [

      AutoRoute(page: HomeRoute.page, initial: true),
      ];
}
