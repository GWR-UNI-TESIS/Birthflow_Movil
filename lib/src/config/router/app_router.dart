import 'dart:async';

import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/auth/views/login.dart';
import 'package:birthflow_movil/src/ui/auth/views/register.dart';
import 'package:birthflow_movil/src/ui/auth/views/splash.dart';
import 'package:birthflow_movil/src/ui/auth/views/welcome.dart';
import 'package:birthflow_movil/src/ui/configuration/screens/ayuda_s.dart';
import 'package:birthflow_movil/src/ui/configuration/screens/change_password.dart';
import 'package:birthflow_movil/src/ui/configuration/screens/configuration_screen.dart';
import 'package:birthflow_movil/src/ui/configuration/screens/editar_info.dart';
import 'package:birthflow_movil/src/ui/error_screen.dart';
import 'package:birthflow_movil/src/ui/forget_password/forget_password_screen.dart';
import 'package:birthflow_movil/src/ui/groups/create_group_screen.dart';
import 'package:birthflow_movil/src/ui/groups/edit_group_screen.dart';
import 'package:birthflow_movil/src/ui/groups/group/group_users_screen.dart';
import 'package:birthflow_movil/src/ui/groups/groups_screen.dart';
import 'package:birthflow_movil/src/ui/home/view/archived_partograph_screen.dart';
import 'package:birthflow_movil/src/ui/home/view/create_partograph.dart';
import 'package:birthflow_movil/src/ui/home/view/favorite_screen.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:birthflow_movil/src/ui/home/view/search_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_create_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/chart_readonly_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/chart_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/childbirth_note/childbirth_note_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/childbirth_note/childbirth_note_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frecuency_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frequency_create_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frequency_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/fetal_heart_rate/fetal_heart_rate_create_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/fetal_heart_rate/fetal_heart_rate_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/fetal_heart_rate/fetal_heart_rate_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/medical_surveillance_create_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/medical_surveillance_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/medical_surveillance_list_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partogram_modification_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partograph_history_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partograph_readonly_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/partograph_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/presentation_position_variety/presentation_position_variety_create_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/presentation_position_variety/presentation_position_variety_edit_screen.dart';
import 'package:birthflow_movil/src/ui/partograph/views/presentation_position_variety/presentation_position_variety_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: avoid_classes_with_only_static_members
class AppRouter {
  final AuthenticationBloc authBloc;

  AppRouter({required this.authBloc});

  // Construye una página con una transición predeterminada
  CustomTransitionPage _buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 600),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  // Construye una ruta con propiedades específicas
  GoRoute _buildRoute({
    required String path,
    required Widget screen,
    List<RouteBase>? routeBase,
  }) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) => _buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: screen,
      ),
      routes: routeBase ?? const <RouteBase>[],
    );
  }

  // Inicializa el enrutador GoRouter
  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: locator<GlobalKey<NavigatorState>>(),

    // Ubicación inicial de la aplicación (ruta del splash)
    initialLocation: AppPaths.splash.goRoute,
    // Definición de rutas
    routes: [
      // Ruta del splash
      _buildRoute(
        path: AppPaths.splash.goRoute,
        screen: const SplashScreen(),
      ),
      GoRoute(
        path: AppPaths.error.goRoute,
        builder: (context, state) {
          final String message = state.extra as String? ?? 'Error desconocido.';
          return ErrorScreen(message: message);
        },
      ),
      // Ruta de inicio
      _buildRoute(
        path: AppPaths.home.goRoute,
        screen: HomeScreen(),
        routeBase: <RouteBase>[
          // Rutas hijas de la ruta de inicio (se agregan aquí)
          _buildRoute(
            path: AppPaths.home.create.goRoute,
            screen: CreatePartographScreen(),
          ),
          _buildRoute(
            path: AppPaths.home.search.goRoute,
            screen: SearchScreen(),
          ),
          _buildRoute(
            path: AppPaths.home.archived.goRoute,
            screen: ArchivedPartographScreen(),
          ),
          _buildRoute(
            path: AppPaths.home.favorite.goRoute,
            screen: FavoritePartographScreen(),
          ),
          _buildRoute(
            path: AppPaths.home.configurationPath.goRoute,
            screen: ConfigurationScreen(),
            routeBase: [
              _buildRoute(
                path: AppPaths.home.configurationPath.changePassword.goRoute,
                screen: const ChangePasswordScreen(),
              ),
            ],
          ),

          _buildRoute(
            path: AppPaths.home.configurationPath.goRoute,
            screen: ConfigurationScreen(),
            routeBase: [
              _buildRoute(
                path: AppPaths.home.configurationPath.editInfo.goRoute,
                screen: EditarInfoScreen(),
              ),
            ],
          ),

          _buildRoute(
            path: AppPaths.home.configurationPath.goRoute,
            screen: ConfigurationScreen(),
            routeBase: [
              _buildRoute(
                path: AppPaths.home.configurationPath.ayudaSop.goRoute,
                screen: AyudaSoportScreen(),
              ),
            ],
          ),

          _buildRoute(
            path: AppPaths.home.groupsPath.goRoute,
            screen: GroupsView(),
            routeBase: [
              _buildRoute(
                path: AppPaths.home.groupsPath.create.goRoute,
                screen: CreateGroupView(),
              ),
              GoRoute(
                path: AppPaths.home.groupsPath.edit.goRoute,
                builder: (context, state) {
                  final data = state.extra! as Group;
                  return EditGroupView(group: data);
                },
              ),
              GoRoute(
                path: AppPaths.home.groupsPath.group.goRoute,
                builder: (context, state) {
                  final profiler = state.extra! as GroupProfiler;
                  return GroupUsersScreen(
                    profiler: profiler,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: AppPaths.home.partographReadOnlyPath.goRoute,
            builder: (context, state) {
              final partographId =
                  state.pathParameters[AppPaths.home.partographPath.id]!;

              return PartographReadOnlyScreen(partographId: partographId);
            },
            routes: [
              _buildRoute(
                path: AppPaths.home.partographReadOnlyPath.chart.goRoute,
                screen: ChartReadOnlyScreen(),
              ),
            ],
          ),

          // Ruta del partograma
          GoRoute(
            path: AppPaths.home.partographPath.goRoute,
            builder: (context, state) {
              final partographId =
                  state.pathParameters[AppPaths.home.partographPath.id]!;

              return PartographScreen(partographId: partographId);
            },
            routes: [
              GoRoute(
                path: AppPaths.home.partographPath.update.goRoute,
                builder: (context, state) {
                  final data = state.extra! as PartographHelper;
                  return PartogramModificationScreen(
                    partograph: data,
                  );
                },
              ),
              GoRoute(
                path: AppPaths.home.partographPath.cervicalDilationList.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return CervicalDilationListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath.cervicalDilationList
                        .create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return CervicalDilationCreateScreen(
                        partographId: partographId,
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.cervicalDilationList.edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as CervicalDilationEditData;
                      return CervicalDilationEditScreen(
                        cervicalDilationEditData: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath.chart.goRoute,
                builder: (context, state) {
                  return ChartScreen();
                },
              ),
              GoRoute(
                path: AppPaths
                    .home.partographPath.medicalSurveillanceListPath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return MedicalSurveillanceListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath
                        .medicalSurveillanceListPath.create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return MedicalSurveillanceCreateScreen(
                        partographId: partographId,
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.cervicalDilationList.edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as MedicalSurveillanceEditData;
                      return MedicalSurveillanceEditScreen(
                        medicalSurveillanceEditData: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath
                    .presentationPositionVarietyPath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return PresentationPositionVarietyListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath
                        .presentationPositionVarietyPath.create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return PresentationPositionVarietyCreateScreen(
                        partographId: partographId,
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths.home.partographPath
                        .presentationPositionVarietyPath.edit.goRoute,
                    builder: (context, state) {
                      final data =
                          state.extra! as PresentationPositionVarietyData;
                      return PresentationPositionVarietyEditScreen(
                        data: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath.fetalHeartRatePath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return FetalHeartRateListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.fetalHeartRatePath.create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return FetalHeartRateCreateScreen(
                        partographId: partographId,
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.fetalHeartRatePath.edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as FetalHeartRateEditData;
                      return FetalHeartRateEditScreen(
                        fetalHeartRateEditData: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths
                    .home.partographPath.contractionFrequencyPath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return ContractionFrequencyListScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths.home.partographPath.contractionFrequencyPath
                        .create.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      return ContractionFrequencyCreateScreen(
                        partographId: partographId,
                      );
                    },
                  ),
                  GoRoute(
                    path: AppPaths.home.partographPath.contractionFrequencyPath
                        .edit.goRoute,
                    builder: (context, state) {
                      final data = state.extra! as ContractionFrequencyEditData;
                      return ContractionFrequencyEditScreen(
                        contractionFrequencyEditData: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath.childbirthNotePath.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return ChildbirthNoteViewScreen(
                    partographId: partographId,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppPaths
                        .home.partographPath.childbirthNotePath.edit.goRoute,
                    builder: (context, state) {
                      final partographId = state
                          .pathParameters[AppPaths.home.partographPath.id]!;
                      final data = state.extra! as ChildbirthNote;
                      return ChildbirthNoteEditScreen(
                        partographId: partographId,
                        childbirthNote: data,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppPaths.home.partographPath.history.goRoute,
                builder: (context, state) {
                  final partographId =
                      state.pathParameters[AppPaths.home.partographPath.id]!;
                  return PartographHistoryScreen(
                    partographId: partographId,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      // Ruta de autenticación
      _buildRoute(
        path: AppPaths.welcome.goRoute,
        screen: const WelcomeScreen(),
        routeBase: <RouteBase>[
          // Rutas hijas de la ruta de autenticación (se agregan aquí)
          _buildRoute(
            path: AppPaths.welcome.login.goRoute,
            screen: const LoginScreen(),
            routeBase: [
              _buildRoute(
                path: AppPaths.welcome.login.forgetPassword.goRoute,
                screen: ForgetPasswordScreen(),
              ),
            ],
          ),
          _buildRoute(
            path: AppPaths.welcome.register.goRoute,
            screen: const RegisterScreen(),
          ),
        ],
      ),
    ],
    // Escuchador para refrescar la lista de rutas basado en el stream del AuthenticationBloc
    refreshListenable: _StreamToListenable([authBloc.stream]),
    // Función para redireccionamiento basado en el estado de autenticación
    redirect: _guard,
  );

  String? _guard(BuildContext context, GoRouterState state) {
    // Verifica el estado de autenticación
    final isAuthenticated = authBloc.state is Authenticated;
    final isUnAuthenticated = authBloc.state is Unauthenticated;
    final initAuth = authBloc.state is Uninitialized;

    final unauthenticatedPaths = [
      AppPaths.welcome.goRoute,
      AppPaths.welcome.login.goRoute,
      AppPaths.welcome.register.goRoute,
    ];

    // Rutas que requieren autenticación
    final authenticatedPaths = [
      AppPaths.home.create.goRoute,
      AppPaths.home.partographPath.goRoute,
    ];

    final isUnauthenticatedPath = unauthenticatedPaths
        .any((path) => state.matchedLocation.contains(path));

    final isAuthenticatedPath =
        authenticatedPaths.any((path) => state.matchedLocation.contains(path));

    //Revisar el inicio
    final initScreen = state.matchedLocation.contains(
      AppPaths.splash.goRoute,
    );

    if (initAuth && initScreen) return null;

    if (isUnAuthenticated && !isUnauthenticatedPath) {
      return AppPaths.welcome.goRoute;
    }

    if (isUnAuthenticated && isAuthenticatedPath) {
      return AppPaths.welcome.goRoute;
    }

    // Redirigir a la página de inicio si el usuario está autenticado y
    // está tratando de acceder a una página de autenticación
    if (isAuthenticated && (isUnauthenticatedPath || initScreen)) {
      return AppPaths.home.path;
    }

    // Permitir el acceso a la ruta solicitada
    return null;
  }
}

class _StreamToListenable extends ChangeNotifier {
  late final List<StreamSubscription> subscriptions;

  _StreamToListenable(List<Stream> streams) {
    subscriptions = [];
    for (final e in streams) {
      final s = e.asBroadcastStream().listen(_tt);
      subscriptions.add(s);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    for (final e in subscriptions) {
      e.cancel();
    }
    super.dispose();
  }

  // ignore: strict_top_level_inference
  void _tt(event) => notifyListeners();
}
