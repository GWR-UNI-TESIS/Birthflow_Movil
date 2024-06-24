import 'package:auto_route/auto_route.dart';
import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/bloc/states/auth_state.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:birthflow_movil/src/ui/login/view/login.dart';
import 'package:birthflow_movil/src/ui/register/view/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  
  final BuildContext mainContext;

  AppRouter(this.mainContext);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, guards: [this]),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
      ];

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final authBloc = mainContext.read<AuthBloc>();
    final state = authBloc.state;
    if (state is AuthSuccess) {
      resolver.next();
    } else {
      router.replace(
        const LoginRoute(),
      );
    }
  }
}
