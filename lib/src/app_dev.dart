import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:birthflow_movil/src/core/firebase/bloc/bloc.dart';
import 'package:birthflow_movil/src/core/firebase/bloc/event/notification_event.dart';
import 'package:birthflow_movil/src/core/firebase/firebase_service.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/register_device_token_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_update_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/groups_get_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  final Catalog catalog;

  const AppDev({required this.catalog, super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CatalogCubit(catalog),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => locator<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => PartographsBloc(
            locator<GetPartographListUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => NotificationBloc(
            locator<RegisterDeviceTokenUseCase>(),
          ),
        ),
        BlocProvider(
          create: (BuildContext context) => PartographBloc(
            locator<GetPartographUseCase>(),
            locator<UpdatePartographUsecase>(),
            locator<CreateCervicalDilationUseCase>(),
            locator<UpdateCervicalDilationUseCase>(),
            locator<DeleteCervicalDilationUseCase>(),
            locator<GetAlertCurvesUseCase>(),
            locator<CreateMedicalSurveillanceUseCase>(),
            locator<UpdateMedicalSurveillanceUseCase>(),
            locator<CreatePresentationPositionVarietyUseCase>(),
            locator<UpdatePresentationPositionVarietyUseCase>(),
            locator<CreateContractionFrequencyUseCase>(),
            locator<UpdateContractionFrequencyUseCase>(),
            locator<CreateFetalHeartRateUseCase>(),
            locator<UpdateFetalHeartRateUseCase>(),
            locator<CreateChildbirthNoteUseCase>(),
            locator<UpdateChildbirthNoteUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => GroupsBloc(
            getGroupsUseCase: locator<GetGroupsUseCase>(),
            createGroupUseCase: locator<CreateGroupUseCase>(),
            updateGroupUseCase: locator<UpdateGroupUseCase>(),
            deleteGroupUseCase: locator<DeleteGroupUseCase>(),
          ),
        ),
      ],
      child: MaterialApp(
        home: AppEntry(),
      ),
    );
  }
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();
    final AppRouter appRouter = AppRouter(authBloc: authBloc);
 

    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) async {
        if (state is Authenticated) {
          final userId =
              state.response.id; // Obtén el userId del estado de autenticación
          final firebaseService = FirebaseService();
          final notificationBloc = context.read<NotificationBloc>();

          // Obtén el token del dispositivo
          final token = await firebaseService.getDeviceToken();
          if (token != null) {
            notificationBloc
                .add(RegisterTokenEvent(userId: userId!, token: token));

            // Escucha cambios en el token
            firebaseService.listenToTokenRefresh((newToken) {
              notificationBloc
                  .add(TokenRefreshedEvent(userId: userId, token: newToken));
            });

            // Escucha mensajes en primer plano
            firebaseService.listenToForegroundMessages((title, body) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$title: $body')),
              );
            });
          }
        }
      },
      child: MaterialApp.router(
        title: 'Birthflow',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        routerConfig: appRouter.router,
      ),
    );
  }
}
